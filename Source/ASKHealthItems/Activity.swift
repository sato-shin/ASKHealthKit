//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct StepCount: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .stepCount

    public typealias ValueType = Int
    public typealias UnitType = EnergyUnit
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

public struct SwimmingDistance {
    internal static let identifier: HKQuantityTypeIdentifier = .distanceSwimming
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: DistanceUnit = .meter
    public let quantity: Double
    public let time: Date
    public let unit: DistanceUnit
    
    public init(quantity: Double, time: Date, unit: DistanceUnit = SwimmingDistance.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }
    
    public init?(sample: HKQuantitySample) {
        self.unit = SwimmingDistance.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct CyclingDistance {
    internal static let identifier: HKQuantityTypeIdentifier = .distanceCycling
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: DistanceUnit = .kilometer
    public let quantity: Double
    public let time: Date
    public let unit: DistanceUnit
    
    public init(quantity: Double, time: Date, unit: DistanceUnit = CyclingDistance.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }
    
    public init?(sample: HKQuantitySample) {
        self.unit = CyclingDistance.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}
