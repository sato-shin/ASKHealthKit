//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public struct BloodPressureDiastolic: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .bloodPressureDiastolic

    public typealias ValueType = Int
    public typealias UnitType = BloodPressureUnit
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .millimeterOfMercury
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct BloodPressureSystolic: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .bloodPressureSystolic

    public typealias ValueType = Int
    public typealias UnitType = BloodPressureUnit
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .millimeterOfMercury
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct BloodPressure: HealthCorrelationItem {
    public static let id: HKCorrelationTypeIdentifier = .bloodPressure

    public typealias ValueType = (
            diastolic: BloodPressureDiastolic,
            systolic:  BloodPressureSystolic
    )
    public typealias TimeType = Date

    public let value: ValueType
    public let time: TimeType

    public init(value: (diastolic: BloodPressureDiastolic, systolic: BloodPressureSystolic), time: Date) {
        self.value = value
        self.time = time
    }

    public init(diastolic: Int, systolic: Int, time: Date) {
        self.value = (
                diastolic: BloodPressureDiastolic(value: diastolic, time: time),
                systolic: BloodPressureSystolic(value: systolic, time: time)
        )
        self.time = time
    }

    public static func convert(object: HKObject) -> BloodPressure {
        let object = object as! HKCorrelation
        let diastolicType = BloodPressureDiastolic.hkObjectType
        let diastolicObject = object.objects(for: diastolicType).first as! HKQuantitySample
        let systolicType = BloodPressureSystolic.hkObjectType
        let systolicObject = object.objects(for: systolicType).first as! HKQuantitySample
        return BloodPressure(
                diastolic: Int(diastolicObject.quantity.doubleValue(for: BloodPressureDiastolic.defaultUnit.hkUnit)),
                systolic: Int(systolicObject.quantity.doubleValue(for: BloodPressureSystolic.defaultUnit.hkUnit)),
                time: object.startDate
        )
    }

    public var data: Set<HKSample> {
        return [value.diastolic.hkSample, value.systolic.hkSample]
    }
    public static var writableAuthorizationTypes: Set<HKSampleType> {
        return BloodPressureDiastolic.writableAuthorizationTypes.union(BloodPressureSystolic.writableAuthorizationTypes)
    }
    public static var readableAuthorizationTypes: Set<HKObjectType> {
        return BloodPressureDiastolic.readableAuthorizationTypes.union(BloodPressureSystolic.readableAuthorizationTypes)
    }
}
