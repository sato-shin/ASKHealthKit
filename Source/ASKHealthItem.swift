//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public protocol ASKHealthItem {
    // TODO: HK 周りは隠蔽したい。。。
    static var hkSampleType: HKSampleType? { get }
    static var hkObjectType: HKObjectType? { get }
    static var hkSampleTypes: [HKSampleType] { get }
    static var hkObjectTypes: [HKObjectType] { get }
    var hkObject: HKObject? { get }
    init?(object: HKObject)
}

protocol ASKHealthQuantityItem: ASKHealthItem {
    static var identifier: HKQuantityTypeIdentifier { get }
    var hkUnit: HKUnit { get }
    var quantity: Double { get }
    var start: Date { get }
    var end: Date { get }
    init?(sample: HKQuantitySample)
}
extension ASKHealthQuantityItem {
    public static var hkSampleType: HKSampleType? {
        return HKSampleType.quantityType(forIdentifier: Self.identifier)
    }
    public static var hkObjectType: HKObjectType? {
        return Self.hkSampleType
    }
    public static var hkSampleTypes: [HKSampleType] {
        guard let type = HKSampleType.quantityType(forIdentifier: Self.identifier) else { return [] }
        return [type]
    }
    public static var hkObjectTypes: [HKObjectType] {
        return Self.hkSampleTypes
    }
    public init?(object: HKObject) {
        guard let object = object as? HKQuantitySample else { return nil }
        self.init(sample: object)
    }
    public var hkObject: HKObject? {
        guard let hkType = HKSampleType.quantityType(forIdentifier: Self.identifier) else { return nil }
        let hkQuantity = HKQuantity(unit: hkUnit, doubleValue: quantity)
        return HKQuantitySample(type: hkType, quantity: hkQuantity, start: start, end: end, device: nil, metadata: nil)
    }
    
    public var unitString: String {
        return hkUnit.unitString
    }
}

protocol ASKHealthCategoryItem: ASKHealthItem {
    static var identifier: HKCategoryTypeIdentifier { get }
    var value: Int { get }
    var start: Date { get }
    var end: Date { get }
    init?(sample: HKCategorySample)
}
extension ASKHealthCategoryItem {
    public static var hkSampleType: HKSampleType? {
        return HKSampleType.categoryType(forIdentifier: Self.identifier)
    }
    public static var hkObjectType: HKObjectType? {
        return Self.hkSampleType
    }
    public static var hkSampleTypes: [HKSampleType] {
        guard let type = HKSampleType.categoryType(forIdentifier: Self.identifier) else { return [] }
        return [type]
    }
    public static var hkObjectTypes: [HKObjectType] {
        return Self.hkSampleTypes
    }
    public init?(object: HKObject) {
        guard let object = object as? HKCategorySample else { return nil }
        self.init(sample: object)
    }
    public var hkObject: HKObject? {
        guard let hkType = HKSampleType.categoryType(forIdentifier: Self.identifier) else { return nil }
        return HKCategorySample(type: hkType, value: value, start: start, end: end, device: nil, metadata: nil)
    }
}

protocol ASKHealthCorrelationItem: ASKHealthItem {
    static var identifier: HKCorrelationTypeIdentifier { get }
    var hkSamples: Set<HKSample>? { get }
    var start: Date { get }
    var end: Date { get }
    init?(sample: HKCorrelation)
}
extension ASKHealthCorrelationItem {
    public init?(object: HKObject) {
        guard let object = object as? HKCorrelation else { return nil }
        self.init(sample: object)
    }
    public static var hkSampleType: HKSampleType? {
        return HKSampleType.correlationType(forIdentifier: Self.identifier)
    }
    public static var hkObjectType: HKObjectType? {
        return hkSampleType
    }
    public var hkObject: HKObject? {
        guard let hkType = HKCorrelationType.correlationType(forIdentifier: Self.identifier),
            let hkSamples = hkSamples else {
                return nil
        }
        return HKCorrelation(type: hkType, start: start, end: end, objects: hkSamples, device: nil, metadata: nil)
    }
}

//
//public enum HealthIdentifier {
//    case energy
//    case carbohydrate
//    case water
//
//    var hkSampleType: HKSampleType? { get }
//    var hkObjectType: HKObjectType? { get }
//    var hkSampleTypes: [HKSampleType] { get }
//    var hkObjectTypes: [HKObjectType] { get }
//    var hkObject: HKObject? { get }
//}
