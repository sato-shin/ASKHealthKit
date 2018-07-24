//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct StepCount: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .stepCount
    internal let hkUnit: HKUnit = .count()
    internal var start: Date { return time }
    internal var end: Date { return time }
    internal let quantity: Double

    public var value: Int { return Int(quantity) }
    public let time: Date
    
    public init(value: Int, time: Date) {
        self.quantity = Double(value)
        self.time = time
    }
    
    public var unitString: String {
        return "step"
    }

    public init?(sample: HKQuantitySample) {
        self.quantity = sample.quantity.doubleValue(for: hkUnit)
        self.time = sample.startDate
    }
}

public struct SwimmingDistance: ASKHealthQuantityItem {
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

public struct CyclingDistance: ASKHealthQuantityItem {
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
