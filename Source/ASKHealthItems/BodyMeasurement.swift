//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct BodyFatPercentage: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .bodyFatPercentage

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Percent
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .percent
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct BodyMassIndex {
    internal static let identifier: HKQuantityTypeIdentifier = .bodyMassIndex
    internal let hkUnit: HKUnit = .count()
    internal var start: Date { return time }
    internal var end: Date { return time }

    public let quantity: Double
    public let time: Date

    public init(quantity: Double, time: Date) {
        self.quantity = quantity
        self.time = time
    }

    public init(sample: HKQuantitySample) {
        self.quantity = sample.quantity.doubleValue(for: hkUnit)
        self.time = sample.startDate
    }

    public var unitString: String {
        return ""
    }
}

public struct LeanBodyMass {
    internal static let identifier: HKQuantityTypeIdentifier = .leanBodyMass
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: HealthUnit.Weight = .kilogram
    public let quantity: Double
    public let time: Date
    public let unit: HealthUnit.Weight

    public init(quantity: Double, time: Date, unit: HealthUnit.Weight = LeanBodyMass.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = LeanBodyMass.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }

    public var unitString: String {
        return unit.string
    }
}

public struct BodyHeight {
    internal static let identifier: HKQuantityTypeIdentifier = .height
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: HealthUnit.Length = .centimeter
    public let quantity: Double
    public let time: Date
    public let unit: HealthUnit.Length

    public init(quantity: Double, time: Date, unit: HealthUnit.Length = BodyHeight.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = BodyHeight.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }

    public var unitString: String {
        return unit.string
    }
}

public struct BodyMass {
    internal static let identifier: HKQuantityTypeIdentifier = .bodyMass
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: HealthUnit.Weight = .kilogram
    public let quantity: Double
    public let time: Date
    public let unit: HealthUnit.Weight

    public init(quantity: Double, time: Date, unit: HealthUnit.Weight = BodyMass.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = BodyMass.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }

    public var unitString: String {
        return unit.string
    }
}

@available(iOS 11.0, *)
public struct WaistCircumference {
    internal static let identifier: HKQuantityTypeIdentifier = .waistCircumference
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static let defaultUnit: HealthUnit.Length = .centimeter
    public let quantity: Double
    public let time: Date
    public let unit: HealthUnit.Length

    public init(quantity: Double, time: Date, unit: HealthUnit.Length = WaistCircumference.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = WaistCircumference.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }

    public var unitString: String {
        return unit.string
    }
}
