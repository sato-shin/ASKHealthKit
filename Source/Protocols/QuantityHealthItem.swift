//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol QuantityHealthItem: HealthItem {
    associatedtype ValueType
    associatedtype UnitType
    associatedtype TimeType

    static var defaultUnit: UnitType { get }

    var value: ValueType { get }
    var unit: UnitType { get }
    var time: TimeType { get }

    init(value: ValueType, unit: UnitType, time: TimeType)
}
extension QuantityHealthItem {
    public init(value: ValueType, time: TimeType) {
        self.init(value: value, unit: Self.defaultUnit, time: time)
    }
}
extension QuantityHealthItem where TimeType == Date {
    var date: DateInterval {
        return DateInterval(start: time, end: time)
    }
}
extension QuantityHealthItem where TimeType == DateInterval {
    var date: DateInterval {
        return time
    }
}
extension QuantityHealthItem where ValueType == Double, UnitType: HealthUnitConvertible {
    var data: HKQuantity {
        return HKQuantity(unit: unit.hkUnit, doubleValue: value)
    }
}
extension QuantityHealthItem where ValueType == Double, UnitType: HealthUnitConvertible, TimeType == Date {
    static func convert(object: HKObject) -> Self {
        let object = object as! HKQuantitySample
        return Self.init(value: object.quantity.doubleValue(for: defaultUnit.hkUnit), time: object.startDate)
    }
}
extension QuantityHealthItem where ValueType == Double, UnitType: HealthUnitConvertible, TimeType == DateInterval {
    static func convert(object: HKObject) -> Self {
        let object = object as! HKQuantitySample
        return Self.init(
                value: object.quantity.doubleValue(for: defaultUnit.hkUnit),
                time: DateInterval(start: object.startDate, end: object.endDate))
    }
}
extension QuantityHealthItem where ValueType == Int, UnitType: HealthUnitConvertible {
    var data: HKQuantity {
        return HKQuantity(unit: unit.hkUnit, doubleValue: Double(value))
    }
}
extension QuantityHealthItem where ValueType == Int, UnitType: HealthUnitConvertible, TimeType == Date {
    static func convert(object: HKObject) -> Self {
        let object = object as! HKQuantitySample
        return Self.init(value: Int(object.quantity.doubleValue(for: defaultUnit.hkUnit)), time: object.startDate)
    }
}
extension QuantityHealthItem where ValueType == Int, UnitType: HealthUnitConvertible, TimeType == DateInterval {
    static func convert(object: HKObject) -> Self {
        let object = object as! HKQuantitySample
        return Self.init(
                value: Int(object.quantity.doubleValue(for: defaultUnit.hkUnit)),
                time: DateInterval(start: object.startDate, end: object.endDate))
    }
}
