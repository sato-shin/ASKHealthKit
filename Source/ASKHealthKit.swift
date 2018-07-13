//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public class ASKHealthKit {
    internal static var store = HKHealthStore()
    
    static public func openHealthApp() {
        UIApplication.shared.open(URL(string: "x-apple-health://")!)
    }
    
    static public var isHealthDataAvailable: Bool {
        return HKHealthStore.isHealthDataAvailable()
    }
}

public enum ASKHealthSharingStatus: String {
    case r = "read"
    case w = "write"
    case rw = "read and write"
}

open class ASKHealthStore: NSObject {
    public func requestAuthorization(completion: @escaping (_ success: Bool, _ error: Error?) -> Void) {
        var count: UInt32 = 0
        let ivars = class_copyIvarList(self.classForCoder, &count)
        var writeItems = Set<HKSampleType>()
        var readItems = Set<HKObjectType>()
        
        for i in (0..<Int(count)) {
            guard let ivar = ivars?[i] else { continue }
            guard let property = object_getIvar(self, ivar) as? HealthItemStoreProtocol else { continue }
            
            switch property.sharing {
            case .r:
                if let type = property.hkObjectType {
                    readItems.insert(type)
                }
            case .w:
                if let type = property.hkSampleType{
                    writeItems.insert(type)
                }
            case .rw:
                if let type = property.hkSampleType {
                    writeItems.insert(type)
                    readItems.insert(type)
                }
            }
        }
        ASKHealthKit.store.requestAuthorization(toShare: writeItems, read: readItems, completion: completion)
    }
}

internal protocol HealthItemStoreProtocol {
    var hkSampleType: HKSampleType? { get }
    var hkObjectType: HKObjectType? { get }
    var sharing: ASKHealthSharingStatus { get }
}

open class HealthItemStore<T: ASKHealthItem>: HealthItemStoreProtocol {
    public let sharing: ASKHealthSharingStatus
    var hkSampleType: HKSampleType? { return T.hkSampleType }
    var hkObjectType: HKObjectType? { return T.hkObjectType }
    
    public init(sharing: ASKHealthSharingStatus) {
        self.sharing = sharing
    }
    
    public func write(_ item: T, withCompletion completion: @escaping (_ success: Bool, _ error: Error?) -> Void) {
        guard let object = item.hkObject else { return }
        ASKHealthKit.store.save(object, withCompletion: completion)
    }
    
    public func readAll(_ completion: @escaping (_ items: [T], _ error: Error?) -> Void) {
        guard let type = T.hkSampleType else {
            completion([], NSError(domain: "", code: HKError.errorInvalidArgument.rawValue))
            return
        }
        
        let predicate = HKQuery.predicateForSamples(withStart: nil, end: nil)
        let limit = HKObjectQueryNoLimit
        let sort = [NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: true)]
        var objects = [T]()
        let query = HKSampleQuery(sampleType: type, predicate: predicate, limit: limit, sortDescriptors: sort) { _, samples, error in
            samples?.forEach { (sample: HKSample) in
                guard let object = T(object: sample) else { return }
                objects.append(object)
            }
            completion(objects, nil)
        }
        
        ASKHealthKit.store.execute(query)
    }
    
    public func deleteAll(_ completion: @escaping (_ success: Bool, _ error: Error?) -> Void) {
        guard let type = T.hkObjectType else {
            completion(false, NSError(domain: "", code: HKError.noError.rawValue))
            return
        }
        
        let predicate = HKQuery.predicateForSamples(withStart: nil, end: nil)
        ASKHealthKit.store.deleteObjects(of: type, predicate: predicate) { success, count, error in
            completion(success, error)
        }
    }
}
