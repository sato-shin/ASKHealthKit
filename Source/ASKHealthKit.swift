//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public class ASKHealthKit {
    internal static var store = HKHealthStore()

    public static func openHealthApp() {
        UIApplication.shared.open(URL(string: "x-apple-health://")!)
    }
    
    public static var isHealthDataAvailable: Bool {
        return HKHealthStore.isHealthDataAvailable()
    }
}

public enum ASKHealthSharingStatus: String {
    case r = "read"
    case w = "write"
    case rw = "read and write"
}

open class ASKHealthStore: NSObject {
    public func requestAuthorization(completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        var count: UInt32 = 0
        let ivars = class_copyIvarList(self.classForCoder, &count)
        var writeItems = Set<HKSampleType>()
        var readItems = Set<HKObjectType>()
        
        for i in (0..<Int(count)) {
            guard let ivar = ivars?[i] else { continue }
            guard let property = object_getIvar(self, ivar) as? HealthItemStoreProtocol else { continue }
            
            switch property.sharing {
            case .r:
                property.hkObjectType.forEach { type in
                    readItems.insert(type)
                }
            case .w:
                property.hkSampleType.forEach { type in
                    writeItems.insert(type)
                }
            case .rw:
                property.hkSampleType.forEach { type in
                    writeItems.insert(type)
                    readItems.insert(type)
                }
            }
        }

        ASKHealthKit.store.requestAuthorization(toShare: writeItems, read: readItems) { success, error in
            completion(success, ASKHealthError(from: error))
        }
    }
}

internal protocol HealthItemStoreProtocol {
    var hkSampleType: [HKSampleType] { get }
    var hkObjectType: [HKObjectType] { get }
    var sharing: ASKHealthSharingStatus { get }
}

open class HealthItemStore<T: ASKHealthItem>: HealthItemStoreProtocol {
    public let sharing: ASKHealthSharingStatus
    internal var hkSampleType: [HKSampleType] { return T.hkSampleTypes }
    internal var hkObjectType: [HKObjectType] { return T.hkObjectTypes }
    
    public init(sharing: ASKHealthSharingStatus) {
        self.sharing = sharing
    }

    public func write(_ items: [T], withCompletion completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        let objects = items.compactMap { $0.hkObject }
        ASKHealthKit.store.save(objects) { success, error in
            completion(success, ASKHealthError(from: error))
        }
    }

    public func write(_ item: T, withCompletion completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        guard let object = item.hkObject else {
            completion(false, .notFoundObject)
            return
        }

        ASKHealthKit.store.save(object) { success, error in
            if success {
                completion(success, nil)
            } else {
                completion(success, ASKHealthError(from: error))
            }
        }
    }
    
    public func read(start: Date?, end: Date?, limit: Int?, _ completion: @escaping (_ items: [T], _ error: ASKHealthError?) -> Void) {
        guard let type = T.hkSampleType else {
            completion([], .notFoundObject)
            return
        }

        let predicate = HKQuery.predicateForSamples(withStart: start, end: end)
        let limit = limit ?? HKObjectQueryNoLimit
        let sort = [NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)]
        var objects = [T]()
        let query = HKSampleQuery(sampleType: type, predicate: predicate, limit: limit, sortDescriptors: sort) { _, samples, error in
            guard error == nil else {
                completion([], ASKHealthError(from: error))
                return
            }
            samples?.forEach { (sample: HKSample) in
                guard let object = T(object: sample) else { return }
                objects.append(object)
            }
            completion(objects, nil)
        }

        ASKHealthKit.store.execute(query)
    }

    public func read(in date: Date, _ completion: @escaping (_ items: [T], _ error: ASKHealthError?) -> Void) {
        read(start: nil, end: date, limit: 1, completion)
    }

    public func readLatest(from date: Date, _ completion: @escaping (_ items: [T], _ error: ASKHealthError?) -> Void) {
        read(start: nil, end: date, limit: 1, completion)
    }

    public func readAll(_ completion: @escaping (_ items: [T], _ error: ASKHealthError?) -> Void) {
        read(start: nil, end: nil, limit: nil, completion)
    }

    public func delete(start: Date?, end: Date?, _ completion: @escaping (_ success: Bool, _ count: Int, _ error: ASKHealthError?) -> Void) {
        guard let type = T.hkObjectType else {
            completion(false, 0, .notFoundObject)
            return
        }

        let predicate = HKQuery.predicateForSamples(withStart: start, end: end)
        ASKHealthKit.store.deleteObjects(of: type, predicate: predicate) { success, count, error in
            completion(success, count, ASKHealthError(from: error))
        }
    }

    public func deleteAll(_ completion: @escaping (_ success: Bool, _ count: Int, _ error: ASKHealthError?) -> Void) {
        delete(start: nil, end: nil, completion)
    }
}
