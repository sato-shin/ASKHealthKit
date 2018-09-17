//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

//public struct BloodPressureDiastolic: HealthItem, HealthStorableItem {
//    internal typealias HealthDataTypeIdentifier = HKQuantityTypeIdentifier
//    internal static let id: HealthDataTypeIdentifier = .bloodPressureDiastolic
//
//    public typealias UnitType = BloodPressureUnit
//    public typealias ValueType = Int
//    public typealias TimeType = Date
//
//    public static let defaultUnit: UnitType = .millimeterOfMercury
//    public let unit: UnitType
//    public let value: ValueType
//    public let time: TimeType
//
//    public init(value: ValueType, time: TimeType, unit: UnitType) {
//        self.value = value
//        self.time = time
//        self.unit = unit
//    }
//
//    init?(object: HKObject) {
//        return nil
//    }
//
//
//}

//public struct BloodPressureSystolic: HealthItem, HealthStorableItem {
//    internal typealias HealthDataTypeIdentifier = HKQuantityTypeIdentifier
//    internal static let id: HealthDataTypeIdentifier = .bloodPressureSystolic
//
//    public typealias UnitType = BloodPressureUnit
//    public typealias ValueType = Int
//    public typealias TimeType = Date
//
//    public static let defaultUnit: UnitType = .millimeterOfMercury
//    public let unit: UnitType
//    public let value: ValueType
//    public let time: TimeType
//
//    public init(value: ValueType, time: TimeType, unit: UnitType) {
//        self.value = value
//        self.time = time
//        self.unit = unit
//    }
//
//    init?(object: HKObject) {
//        return nil
//    }
//}
//
//struct BloodPressure: HealthItem, HealthStorableItem {
//    internal typealias HealthDataTypeIdentifier = HKCorrelationTypeIdentifier
//    internal static let id: HKCorrelationTypeIdentifier = .bloodPressure
//
//    public typealias UnitType = BloodPressureUnit
//    public typealias ValueType = (diastolic: BloodPressureDiastolic,
//                                  systolic:  BloodPressureSystolic)
//    public typealias TimeType = Date
//
//    public static let defaultUnit: UnitType = .millimeterOfMercury
//    public let unit: UnitType
//    public let value: ValueType
//    public let time: TimeType
//
//    public init(value: (diastolic: BloodPressureDiastolic, systolic: BloodPressureSystolic), time: Date, unit: BloodPressureUnit) {
//        self.value = value
//        self.time = time
//        self.unit = unit
//    }
//
//    public init(diastolic: Int, systolic: Int, time: Date) {
//        let diastolic = BloodPressureDiastolic(value: diastolic, time: time)
//        let systolic = BloodPressureSystolic(value: systolic, time: time)
//        self.init(value: (diastolic: diastolic, systolic: systolic), time: time)
//    }
//
//    init?(object: HKObject) {
//        return nil
//    }
//
//    internal init?(sample: HKCorrelation) {
//        guard let diastolicType = BloodPressureDiastolic.hkObjectTypes.first,
//            let diastolicObject = sample.objects(for: diastolicType).first as? HKQuantitySample,
//            let systolicType = BloodPressureSystolic.hkObjectTypes.first,
//            let systolicObject = sample.objects(for: systolicType).first as? HKQuantitySample else {
//                return nil
//        }
//        self.init(
//            diastolic: Int(diastolicObject.quantity.doubleValue(for: BloodPressureDiastolic.defaultUnit.hkUnit)),
//            systolic: Int(systolicObject.quantity.doubleValue(for: BloodPressureSystolic.defaultUnit.hkUnit)),
//            time: sample.startDate
//        )
//    }
//
//    public static var hkSampleTypes: [HKSampleType] {
//        return BloodPressureDiastolic.hkSampleTypes + BloodPressureSystolic.hkSampleTypes
//    }
//    public static var hkObjectTypes: [HKObjectType] {
//        return hkSampleTypes
//    }
//}
