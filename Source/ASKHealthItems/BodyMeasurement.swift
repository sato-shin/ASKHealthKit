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

public struct BodyMass: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .bodyMass

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Weight
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilogram
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct BodyMassIndex: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .bodyMassIndex

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Count
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .count
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct LeanBodyMass: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .leanBodyMass

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Weight
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilogram
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct BodyHeight: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .height

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Length
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .centimeter
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

@available(iOS 11.0, *)
public struct WaistCircumference: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .waistCircumference

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Length
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .centimeter
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}
