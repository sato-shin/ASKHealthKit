//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

protocol HealthObjectConvertable {
    static var hkObjectTypes: Set<HKObjectType> { get }
    static var hkSampleTypes: Set<HKSampleType> { get }

    var hkObjects: [HKObject] { get }
    var hkSamples: [HKSample] { get }

    init?(object: HKObject)
}

protocol QuantityObjectConvertable: HealthObjectConvertable {
    static var id: HKQuantityTypeIdentifier { get }
    
    var data: HKQuantity { get }
    var date: DateInterval { get }
}

extension QuantityObjectConvertable {
    internal static var hkObjectTypes: Set<HKObjectType> {
        return hkSampleTypes
    }

    internal static var hkSampleTypes: Set<HKSampleType> {
        return [HKQuantityType.quantityType(forIdentifier: Self.id)!]
    }

    internal var hkObjects: [HKObject] {
        return hkSamples
    }

    internal var hkSamples: [HKSample] {
        return [
            HKQuantitySample(type: HKQuantityType.quantityType(forIdentifier: Self.id)!,
                    quantity: data, start: date.start, end: date.end,
                    device: nil, metadata: nil)
        ]
    }
}

protocol CategoryObjectConvertable: HealthObjectConvertable {
    static var id: HKCategoryTypeIdentifier { get }

    var data: Int { get }
    var date: DateInterval { get }
}
extension CategoryObjectConvertable {
    internal static var hkObjectTypes: Set<HKObjectType> {
        return hkSampleTypes
    }

    internal static var hkSampleTypes: Set<HKSampleType> {
        return [HKCategoryType.categoryType(forIdentifier: Self.id)!]
    }

    internal var hkObjects: [HKObject] {
        return hkSamples
    }

    internal var hkSamples: [HKSample] {
        return [
            HKCategorySample(type: HKCategoryType.categoryType(forIdentifier: Self.id)!,
                             value: data, start: date.start, end: date.end,
                             device: nil, metadata: nil)
        ]
    }
}

//extension HealthStorableItem where HealthDateTypeIdentifier == HKCharacteristicTypeIdentifier {
//    typealias HealthDataType = Void
//
//    internal static var hkObjectTypes: Set<HKObjectType> {
//        return [HKCharacteristicType.characteristicType(forIdentifier: Self.id)!]
//    }
//
//    internal static var hkSampleTypes: Set<HKSampleType> {
//        return []
//    }
//
//    internal var hkObjects: [HKObject] {
//        return []
//    }
//    internal var hkSamples: [HKSample] {
//        return []
//    }
//}
//extension HealthStorableItem where HealthDateTypeIdentifier == HKCorrelationTypeIdentifier {
//}

public protocol HealthQuantityItem {
    associatedtype ValueType
    associatedtype UnitType
    associatedtype TimeType

    static var defaultUnit: UnitType { get }

    var value: ValueType { get }
    var unit: UnitType { get }
    var time: TimeType { get }

    init(value: ValueType, time: TimeType, unit: UnitType)
}
extension HealthQuantityItem {
    public init(value: ValueType, time: TimeType) {
        self.init(value: value, time: time, unit: Self.defaultUnit)
    }
}

public protocol HealthCategoryItem {
    associatedtype ValueType
    associatedtype TimeType
    var value: ValueType { get }
    var time: TimeType { get }
    init(value: ValueType, time: TimeType)
}
extension HealthCategoryItem where ValueType == NotApplicableCategory {
    public init(time: TimeType) {
        self.init(value: NotApplicableCategory(), time: time)
    }
}

public struct NotApplicableCategory {
    internal let rawValue: Int = HKCategoryValue.notApplicable.rawValue
}

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

public class ItemStore<T: HealthObjectConvertable>: ItemStoreProtocol {
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
                    guard let object = T(object: sample) else {
                        return
                    }
                    objects.append(object)
                }
                completion(objects, nil)
            }
            ASKHealthKit.store.execute(query)
        }
    }

    public func write(_ items: [T], withCompletion completion: @escaping (_ success: Bool, _ error: ASKHealthError?) -> Void) {
        let objects = items.flatMap { $0.hkObjects }
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


