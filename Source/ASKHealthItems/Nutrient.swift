//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public struct EnergyConsumed: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryEnergyConsumed

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
