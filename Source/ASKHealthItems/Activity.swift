//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct EnergyBurned: QuantityHealthItem {
    public static let id: ItemIdentifier = .activeEnergyBurned

    public typealias ValueType = Int
    public typealias UnitType = HealthUnit.Energy
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .kilocalorie
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct ExerciseMinute: QuantityHealthItem {
    public static let id: ItemIdentifier = .appleExerciseTime

    public typealias ValueType = Int
    public typealias UnitType = HealthUnit.Time
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .minute
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct RestingEnergy: QuantityHealthItem {
    public static let id: ItemIdentifier = .basalEnergyBurned

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Energy
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .kilocalorie
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct CyclingDistance: QuantityHealthItem {
    public static let id: ItemIdentifier = .distanceCycling

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Distance
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilometer
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

@available(iOS 11.2, *)
public struct DownhillSnowSportsDistance: QuantityHealthItem {
    public static let id: ItemIdentifier = .distanceDownhillSnowSports

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Distance
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilometer
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct SwimmingDistance: QuantityHealthItem {
    public static let id: ItemIdentifier = .distanceSwimming

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Distance
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .meter
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct WalkingRunningDistance: QuantityHealthItem {
    public static let id: ItemIdentifier = .distanceWalkingRunning

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Distance
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilometer
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct WheelchairDistance: QuantityHealthItem {
    public static let id: ItemIdentifier = .distanceWheelchair

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Distance
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilometer
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct FlightsClimbed: QuantityHealthItem {
    public static let id: ItemIdentifier = .flightsClimbed

    public typealias ValueType = Int
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

public struct NikeFuel: QuantityHealthItem {
    public static let id: ItemIdentifier = .nikeFuel

    public typealias ValueType = Int
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

public struct WheelchairPushCount: QuantityHealthItem {
    public static let id: ItemIdentifier = .pushCount

    public typealias ValueType = Int
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

public struct StepCount: QuantityHealthItem {
    public static let id: ItemIdentifier = .stepCount

    public typealias ValueType = Int
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

public struct SwimmingStrokeCount: QuantityHealthItem {
    public static let id: ItemIdentifier = .swimmingStrokeCount

    public typealias ValueType = Int
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

@available(iOS 11.2, *)
public struct VO2Max: QuantityHealthItem {
    public static let id: ItemIdentifier = .vo2Max

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.VO2Max
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .ml_KgMin
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct AppleStandHour: CategoryHealthItem {
    public static let id: ItemIdentifier = .appleStandHour

    public typealias ValueType = Category.AppleStandHour
    public typealias TimeType = DateInterval
    public typealias OptionType = Void

    public let value: ValueType
    public let time: TimeType
    public let option: OptionType

    public init(value: ValueType, time: TimeType, option: OptionType) {
        self.value = value
        self.time = time
        self.option = option
    }

    public static func convert(object: HKObject) -> AppleStandHour {
        let object = object as! HKCategorySample
        let value = ValueType(value: object.value)!
        return self.init(value: value, time: DateInterval(start: object.startDate, end: object.endDate))
    }
}
