//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

class Store: NSObject {
    public func requestAuthorization(completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        var count: UInt32 = 0
        let ivars = class_copyIvarList(self.classForCoder, &count)
        var writeItems = Set<HKSampleType>()
        var readItems = Set<HKObjectType>()

        for i in (0..<Int(count)) {
            guard let ivar = ivars?[i] else { continue }
            guard let property = object_getIvar(self, ivar) as? ItemStoreProtocol else { continue }

            switch property.sharing {
            case .r:
                property.hkObjectTypes.forEach { type in
                    readItems.insert(type)
                }
            case .w:
                property.hkSampleTypes.forEach { type in
                    writeItems.insert(type)
                }
            case .rw:
                property.hkSampleTypes.forEach { type in
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

protocol ItemStoreProtocol {
    var sharing: ASKHealthSharingStatus { get }
    var hkSampleTypes: Set<HKSampleType> { get }
    var hkObjectTypes: Set<HKObjectType> { get }
}

public class ItemStore<T: HealthItem>: ItemStoreProtocol {
    public let sharing: ASKHealthSharingStatus
    public init(sharing: ASKHealthSharingStatus) {
        self.sharing = sharing
    }

    var hkSampleTypes: Set<HKSampleType> { return T.hkSampleTypes }
    var hkObjectTypes: Set<HKObjectType> { return T.hkObjectTypes }

    public func read(start: Date?, end: Date?, limit: Int?, _ completion: @escaping (_ items: [T], _ error: ASKHealthError?) -> Void) {
        let predicate = HKQuery.predicateForSamples(withStart: start, end: end)
        let limit = limit ?? HKObjectQueryNoLimit
        let sort = [NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)]
        var objects = [T]()
        for type in T.hkSampleTypes {
            let query = HKSampleQuery(sampleType:type, predicate: predicate, limit: limit, sortDescriptors: sort) { _, samples, error in
                guard error == nil else {
                    completion([], ASKHealthError(from: error))
                    return
                }
                samples?.forEach { (sample: HKSample) in
                    guard let sample = sample as? HKQuantitySample else {
                        return
                    }
                    let object = T.convert(object: sample)
                    objects.append(object)
                }
                completion(objects, nil)
            }
            ASKHealthKit.store.execute(query)
        }
    }

    public func write(_ items: [T], withCompletion completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        let objects = items.map { $0.hkObject }
        ASKHealthKit.store.save(objects) { (success: Bool, error: Error?) in
            let e = success ? nil : ASKHealthError(from: error)
            completion(success, e)
        }
    }

    public func delete(start: Date?, end: Date?, _ completion: @escaping (_ success: Bool, _ count: Int, _ error: ASKHealthError?) -> Void) {
        let objectTypes = T.hkObjectTypes
        let predicate = HKQuery.predicateForSamples(withStart: start, end: end)
        objectTypes.forEach { type in
            ASKHealthKit.store.deleteObjects(of: type, predicate: predicate) { success, count, error in
                completion(success, count, ASKHealthError(from: error))
            }
        }
    }
}


