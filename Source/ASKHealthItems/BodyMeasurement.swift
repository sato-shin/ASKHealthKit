//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct BodyFatPercentage: QuantityHealthSample {
    public static let id: ItemIdentifier = .bodyFatPercentage

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Percent
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .percent
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

public struct BodyMass: QuantityHealthSample {
    public static let id: ItemIdentifier = .bodyMass

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Weight
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilogram
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

public struct BodyMassIndex: QuantityHealthSample {
    public static let id: ItemIdentifier = .bodyMassIndex

    public typealias ValueType = Double
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

public struct LeanBodyMass: QuantityHealthSample {
    public static let id: ItemIdentifier = .leanBodyMass

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Weight
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .kilogram
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

public struct BodyHeight: QuantityHealthSample {
    public static let id: ItemIdentifier = .height

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Length
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .centimeter
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

@available(iOS 11.0, *)
public struct WaistCircumference: QuantityHealthSample {
    public static let id: ItemIdentifier = .waistCircumference

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Length
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .centimeter
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
