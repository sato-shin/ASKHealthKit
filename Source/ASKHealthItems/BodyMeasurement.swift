//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct BodyFatPercentage: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .bodyFatPercentage
    internal let hkUnit: HKUnit = .percent()
    internal var start: Date { return time }
    internal var end: Date { return time }

    public let quantity: Double
    public let time: Date

    public init(quantity: Double, time: Date) {
        self.quantity = quantity / 100
        self.time = time
    }

    public init(sample: HKQuantitySample) {
        self.quantity = sample.quantity.doubleValue(for: hkUnit) * 100
        self.time = sample.startDate
    }
}

public struct BodyMassIndex: ASKHealthQuantityItem {
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

public struct LeanBodyMass: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .leanBodyMass
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: WeightUnit = .kilogram
    public let quantity: Double
    public let time: Date
    public let unit: WeightUnit

    public init(quantity: Double, time: Date, unit: WeightUnit = LeanBodyMass.defaultUnit) {
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

public struct BodyHeight: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .height
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: LengthUnit = .centimeter
    public let quantity: Double
    public let time: Date
    public let unit: LengthUnit

    public init(quantity: Double, time: Date, unit: LengthUnit = BodyHeight.defaultUnit) {
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

public struct BodyMass: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .bodyMass
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: WeightUnit = .kilogram
    public let quantity: Double
    public let time: Date
    public let unit: WeightUnit

    public init(quantity: Double, time: Date, unit: WeightUnit = BodyMass.defaultUnit) {
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
public struct WaistCircumference: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .waistCircumference
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static let defaultUnit: LengthUnit = .centimeter
    public let quantity: Double
    public let time: Date
    public let unit: LengthUnit

    public init(quantity: Double, time: Date, unit: LengthUnit = WaistCircumference.defaultUnit) {
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
