//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct EnergyBurned: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .activeEnergyBurned

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

public struct ExerciseMinute: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .appleExerciseTime

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

public struct RestingEnergy: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .basalEnergyBurned

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

public struct CyclingDistance: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .distanceCycling

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
public struct DownhillSnowSportsDistance: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .distanceDownhillSnowSports

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

public struct SwimmingDistance: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .distanceSwimming

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

public struct WalkingRunningDistance: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .distanceWalkingRunning

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

public struct WheelchairDistance: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .distanceWheelchair

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

public struct FlightsClimbed: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .flightsClimbed

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

public struct NikeFuel: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .nikeFuel

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

public struct WheelchairPushCount: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .pushCount

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

public struct StepCount: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .stepCount

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

public struct SwimmingStrokeCount: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .swimmingStrokeCount

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

@available(iOS 11.0, *)
public struct VO2Max: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .vo2Max

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

public struct AppleStandHour: HealthCategoryItem {
    public static let id: HKCategoryTypeIdentifier = .appleStandHour

    public typealias ValueType = Category.AppleStandHour
    public typealias TimeType = DateInterval

    public let value: ValueType
    public let time: TimeType

    public init(value: ValueType, time: TimeType) {
        self.value = value
        self.time = time
    }

    public static func convert(object: HKObject) -> AppleStandHour {
        let object = object as! HKCategorySample
        let value = ValueType(value: object.value)!
        return self.init(value: value, time: DateInterval(start: object.startDate, end: object.endDate))
    }
}
