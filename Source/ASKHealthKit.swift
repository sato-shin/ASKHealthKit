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
            guard let ivar = ivars?[i],
                  let property = object_getIvar(self, ivar) as? HealthItemStoreProtocol else {
                continue
            }

            switch property.sharing {
            case .r:
                property.readableAuthorizationTypes.forEach { type in
                    readItems.insert(type)
                }
            case .w:
                property.writableAuthorizationTypes.forEach { type in
                    writeItems.insert(type)
                }
            case .rw:
                property.writableAuthorizationTypes.forEach { type in
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
    var writableAuthorizationTypes: Set<HKSampleType> { get }
    var readableAuthorizationTypes: Set<HKObjectType> { get }
    var sharing: ASKHealthSharingStatus { get }
}

open class HealthItemStore<T: HealthItem>: HealthItemStoreProtocol {
    public let sharing: ASKHealthSharingStatus
    public init(sharing: ASKHealthSharingStatus) {
        self.sharing = sharing
    }

    var writableAuthorizationTypes: Set<HKSampleType> {
        return T.writableAuthorizationTypes
    }

    var readableAuthorizationTypes: Set<HKObjectType> {
        return T.readableAuthorizationTypes
    }

    public func write(_ items: [T], withCompletion completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        let objects: [HKObject] = items.map { $0.hkObject }
        ASKHealthKit.store.save(objects) { success, error in
            let e = success ? nil : ASKHealthError(from: error)
            completion(success, e)
        }
    }

    public func write(_ item: T, withCompletion completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        write([item], withCompletion: completion)
    }
    
    public func read(start: Date?, end: Date?, limit: Int?, _ completion: @escaping (_ items: [T], _ error: ASKHealthError?) -> Void) {
        let predicate = HKQuery.predicateForSamples(withStart: start, end: end)
        let limit = limit ?? HKObjectQueryNoLimit
        let sort = [NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)]
        var objects = [T]()
        let query = HKSampleQuery(sampleType:T.hkSampleType, predicate: predicate, limit: limit, sortDescriptors: sort) { _, samples, error in
            guard error == nil else {
                completion([], ASKHealthError(from: error))
                return
            }
            samples?.forEach { (sample: HKSample) in
                let object = T.convert(object: sample)
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
        let predicate = HKQuery.predicateForSamples(withStart: start, end: end)
        ASKHealthKit.store.deleteObjects(of: T.hkObjectType, predicate: predicate) { success, count, error in
            completion(success, count, ASKHealthError(from: error))
        }
    }

    public func deleteAll(_ completion: @escaping (_ success: Bool, _ count: Int, _ error: ASKHealthError?) -> Void) {
        delete(start: nil, end: nil, completion)
    }
}
