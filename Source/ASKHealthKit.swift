//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import UIKit
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
    private var authorizationItems: (write: Set<HKSampleType>, read: Set<HKObjectType>) {
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

        return (writeItems, readItems)
    }

    open var authorizationStatus: AuthorizationStatus {
        let items = authorizationItems
        let types = items.read.union(items.write)
        let statuses = types.map { ASKHealthKit.store.authorizationStatus(for: $0) }
        let notDeterminedCount = statuses.filter { $0 == .notDetermined }.count
        if statuses.count == notDeterminedCount {
            return .empty
        } else if notDeterminedCount == 0 {
            return .full
        } else {
            return .lack
        }
    }

    open func requestAuthorization(completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        let items = authorizationItems

        ASKHealthKit.store.requestAuthorization(toShare: items.write, read: items.read) { success, error in
            completion(success, ASKHealthError(from: error))
        }
    }

    public enum AuthorizationStatus {
        case empty
        case lack
        case full
    }
}

internal protocol HealthItemStoreProtocol {
    var readableAuthorizationTypes: Set<HKObjectType> { get }
    var writableAuthorizationTypes: Set<HKSampleType> { get }
    var sharing: ASKHealthSharingStatus { get }
}

open class HealthItemStore<T: HealthItem>: HealthItemStoreProtocol {
    public let sharing: ASKHealthSharingStatus
    public init(sharing: ASKHealthSharingStatus) {
        self.sharing = sharing
    }

    internal var readableAuthorizationTypes: Set<HKObjectType> {
        return T.id.readableAuthorizationTypes
    }

    internal var writableAuthorizationTypes: Set<HKSampleType> {
        return T.id.writableAuthorizationTypes
    }

//    public func read(in date: Date, _ completion: @escaping (_ items: [T], _ error: ASKHealthError?) -> Void) {
//        read(start: nil, end: date, limit: 1, completion)
//    }
//
//    public func readLatest(from date: Date, _ completion: @escaping (_ items: [T], _ error: ASKHealthError?) -> Void) {
//        read(start: nil, end: date, limit: 1, completion)
//    }
//
//    public func readAll(_ completion: @escaping (_ items: [T], _ error: ASKHealthError?) -> Void) {
//        read(start: nil, end: nil, limit: nil, completion)
//    }

    public func delete(start: Date?, end: Date?, _ completion: @escaping (_ success: Bool, _ count: Int, _ error: ASKHealthError?) -> Void) {
//        let predicate = HKQuery.predicateForSamples(withStart: start, end: end)
//        ASKHealthKit.store.deleteObjects(of: T.hkObjectType, predicate: predicate) { success, count, error in
//            completion(success, count, ASKHealthError(from: error))
//        }
    }

    public func deleteAll(_ completion: @escaping (_ success: Bool, _ count: Int, _ error: ASKHealthError?) -> Void) {
        delete(start: nil, end: nil, completion)
    }
}

extension HealthItemStore where T: QuantityHealthItem {
    public func write(_ items: [T], withCompletion completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        let objects: [HKObject] = items.compactMap { item in
            guard let identifier = T.id.rawValue as? HKQuantityTypeIdentifier,
                  let type = HKQuantityType.quantityType(forIdentifier: identifier) else {
                return nil
            }
            let quantity = HKQuantity(unit: item.unit.hkUnit, doubleValue: item.rawValue)
            return HKQuantitySample(type: type, quantity: quantity, start: item.rawTime.start, end: item.rawTime.end, device: nil, metadata: nil)
        }
        ASKHealthKit.store.save(objects) { success, error in
            let e = success ? nil : ASKHealthError(from: error)
            completion(success, e)
        }
    }

    public func read(start: Date?, end: Date?, limit: Int?, _ completion: @escaping (_ items: [T], _ error: ASKHealthError?) -> Void) {
        let predicate = HKQuery.predicateForSamples(withStart: start, end: end)
        let limit = limit ?? HKObjectQueryNoLimit
        let sort = [NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)]
        let query = HKSampleQuery(sampleType:T.id.writableAuthorizationTypes.first!, predicate: predicate, limit: limit, sortDescriptors: sort) { _, samples, error in
            guard error == nil else {
                completion([], ASKHealthError(from: error))
                return
            }
            guard let samples = samples else {
                completion([], nil)
                return
            }
            let objects: [T] = samples.compactMap { sample in
                guard let sample = sample as? HKQuantitySample else { return nil }
                return T(sample)
            }
            completion(objects, nil)
        }
        ASKHealthKit.store.execute(query)
    }

    public func write(_ item: T, withCompletion completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        write([item], withCompletion: completion)
    }
}

extension HealthItemStore where T: CategoryHealthItem {
    public func write(_ items: [T], withCompletion completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        let objects: [HKObject] = items.compactMap { item in
            guard let identifier = T.id.rawValue as? HKCategoryTypeIdentifier,
                  let type = HKCategoryType.categoryType(forIdentifier: identifier) else {
                return nil
            }
            return HKCategorySample(type: type, value: item.value.rawValue, start: item.rawTime.start, end: item.rawTime.end, device: nil, metadata: nil)
        }
        ASKHealthKit.store.save(objects) { success, error in
            let e = success ? nil : ASKHealthError(from: error)
            completion(success, e)
        }
    }

    public func read(start: Date?, end: Date?, limit: Int?, _ completion: @escaping (_ items: [T], _ error: ASKHealthError?) -> Void) {
        let predicate = HKQuery.predicateForSamples(withStart: start, end: end)
        let limit = limit ?? HKObjectQueryNoLimit
        let sort = [NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)]
        let query = HKSampleQuery(sampleType:T.id.writableAuthorizationTypes.first!, predicate: predicate, limit: limit, sortDescriptors: sort) { _, samples, error in
            guard error == nil else {
                completion([], ASKHealthError(from: error))
                return
            }
            guard let samples = samples else {
                completion([], nil)
                return
            }
            let objects: [T] = samples.compactMap { sample in
                guard let sample = sample as? HKCategorySample else { return nil }
                return T(sample)
            }
            completion(objects, nil)
        }
        ASKHealthKit.store.execute(query)
    }

    public func write(_ item: T, withCompletion completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        write([item], withCompletion: completion)
    }
}
