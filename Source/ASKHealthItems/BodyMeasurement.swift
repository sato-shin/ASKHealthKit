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
        self.quantity = quantity
        self.time = time
    }

    public init(sample: HKQuantitySample) {
        self.quantity = sample.quantity.doubleValue(for: hkUnit)
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
}

public struct LeanBodyMass: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .leanBodyMass
    internal let hkUnit: HKUnit = .gramUnit(with: .kilo)
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
}

public struct BodyHeight: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .height
    internal let hkUnit: HKUnit = .meterUnit(with: .centi)
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
}

public struct BodyMass: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .bodyMass
    internal let hkUnit: HKUnit = .gramUnit(with: .kilo)
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
}

@available(iOS 11.0, *)
public struct WaistCircumference: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .waistCircumference
    internal let hkUnit: HKUnit = .meterUnit(with: .centi)
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
}
