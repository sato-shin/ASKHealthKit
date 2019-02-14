//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol QuantityHealthItem: HealthItem {
    associatedtype ValueType
    associatedtype UnitType: HealthUnitConvertible
    associatedtype TimeType

    static var defaultUnit: UnitType { get }

    var value: ValueType { get }
    var unit: UnitType { get }
    var time: TimeType { get }

    var metadata: [String: Any]? { get set }
    
    init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]?)
    init(_ sample: HKQuantitySample)

    var rawValue: Double { get }
    var rawTime: DateInterval { get }
}
extension QuantityHealthItem {
    public init(value: ValueType, time: TimeType, metadata: [String: Any]? = nil) {
        self.init(value: value, unit: Self.defaultUnit, time: time, metadata: metadata)
    }
}
extension QuantityHealthItem where TimeType == Date {
    public var rawTime: DateInterval {
        return DateInterval(start: time, end: time)
    }
}
extension QuantityHealthItem where TimeType == DateInterval {
    public var rawTime: DateInterval {
        return time
    }
}
extension QuantityHealthItem where ValueType == Double {
    public var rawValue: Double {
        return value
    }
}
extension QuantityHealthItem where ValueType == Int {
    public var rawValue: Double {
        return Double(value)
    }
}
extension QuantityHealthItem where ValueType == Double, UnitType: HealthUnitConvertible, TimeType == Date {
    public init(_ sample: HKQuantitySample) {
        self = Self.init(
                value: sample.quantity.doubleValue(for: Self.defaultUnit.hkUnit),
                time: sample.startDate)
    }
}
extension QuantityHealthItem where ValueType == Double, UnitType: HealthUnitConvertible, TimeType == DateInterval {
    public init(_ sample: HKQuantitySample) {
        self = Self.init(
                value: sample.quantity.doubleValue(for: Self.defaultUnit.hkUnit),
                time: DateInterval(start: sample.startDate, end: sample.endDate))
    }
}
extension QuantityHealthItem where ValueType == Int, UnitType: HealthUnitConvertible, TimeType == Date {
    public init(_ sample: HKQuantitySample) {
        self = Self.init(
                value: Int(sample.quantity.doubleValue(for: Self.defaultUnit.hkUnit)),
                time: sample.startDate)
    }
}
extension QuantityHealthItem where ValueType == Int, UnitType: HealthUnitConvertible, TimeType == DateInterval {
    public init(_ sample: HKQuantitySample) {
        self = Self.init(
                value: Int(sample.quantity.doubleValue(for: Self.defaultUnit.hkUnit)),
                time: DateInterval(start: sample.startDate, end: sample.endDate))
    }
}
