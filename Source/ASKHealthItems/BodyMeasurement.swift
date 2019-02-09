//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct BodyFatPercentage: QuantityHealthItem {
    public static let id: Item.Identifier = .bodyFatPercentage

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

public struct BodyMass: QuantityHealthItem {
    public static let id: Item.Identifier = .bodyMass

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

public struct BodyMassIndex: QuantityHealthItem {
    public static let id: Item.Identifier = .bodyMassIndex

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

public struct LeanBodyMass: QuantityHealthItem {
    public static let id: Item.Identifier = .leanBodyMass

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

public struct BodyHeight: QuantityHealthItem {
    public static let id: Item.Identifier = .height

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
public struct WaistCircumference: QuantityHealthItem {
    public static let id: Item.Identifier = .waistCircumference

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
