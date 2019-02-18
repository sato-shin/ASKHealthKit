//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct EnergyBurned: QuantityHealthSample {
    public static let id: ItemIdentifier = .activeEnergyBurned

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Energy
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .kilocalorie
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct ExerciseMinute: QuantityHealthSample {
    public static let id: ItemIdentifier = .appleExerciseTime

    public typealias ValueType = Int
    public typealias UnitType = HealthUnit.Time
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .minute
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct RestingEnergy: QuantityHealthSample {
    public static let id: ItemIdentifier = .basalEnergyBurned

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Energy
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .kilocalorie
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct CyclingDistance: QuantityHealthSample {
    public static let id: ItemIdentifier = .distanceCycling

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Distance
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilometer
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

@available(iOS 11.2, *)
public struct DownhillSnowSportsDistance: QuantityHealthSample {
    public static let id: ItemIdentifier = .distanceDownhillSnowSports

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Distance
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilometer
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct SwimmingDistance: QuantityHealthSample {
    public static let id: ItemIdentifier = .distanceSwimming

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Distance
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .meter
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct WalkingRunningDistance: QuantityHealthSample {
    public static let id: ItemIdentifier = .distanceWalkingRunning

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Distance
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilometer
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct WheelchairDistance: QuantityHealthSample {
    public static let id: ItemIdentifier = .distanceWheelchair

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Distance
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilometer
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct FlightsClimbed: QuantityHealthSample {
    public static let id: ItemIdentifier = .flightsClimbed

    public typealias ValueType = Int
    public typealias UnitType = HealthUnit.Count
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .count
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct NikeFuel: QuantityHealthSample {
    public static let id: ItemIdentifier = .nikeFuel

    public typealias ValueType = Int
    public typealias UnitType = HealthUnit.Count
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .count
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct WheelchairPushCount: QuantityHealthSample {
    public static let id: ItemIdentifier = .pushCount

    public typealias ValueType = Int
    public typealias UnitType = HealthUnit.Count
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .count
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct StepCount: QuantityHealthSample {
    public static let id: ItemIdentifier = .stepCount

    public typealias ValueType = Int
    public typealias UnitType = HealthUnit.Count
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .count
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct SwimmingStrokeCount: QuantityHealthSample {
    public static let id: ItemIdentifier = .swimmingStrokeCount

    public typealias ValueType = Int
    public typealias UnitType = HealthUnit.Count
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .count
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

@available(iOS 11.2, *)
public struct VO2Max: QuantityHealthSample {
    public static let id: ItemIdentifier = .vo2Max

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.VO2Max
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .ml_KgMin
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct AppleStandHour: CategoryHealthItem {
    public static let id: ItemIdentifier = .appleStandHour

    public typealias ValueType = ASKHealthCategoryValue.AppleStandHour
    public typealias TimeType = DateInterval
    public typealias OptionType = Void

    public let value: ValueType
    public let time: TimeType
    public var metadata: [String: Any]?
    public let option: OptionType

    public init(value: ValueType, time: TimeType, option: OptionType) {
        self.value = value
        self.time = time
        self.option = option
    }
}
