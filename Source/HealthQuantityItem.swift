//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol HealthQuantityItem: HealthItem {
    associatedtype ValueType
    associatedtype UnitType
    associatedtype TimeType

    static var id: HKQuantityTypeIdentifier { get }
    static var defaultUnit: UnitType { get }

    var value: ValueType { get }
    var unit: UnitType { get }
    var time: TimeType { get }

    init(value: ValueType, unit: UnitType, time: TimeType)

    static func convert(object: HKObject) -> Self
    var data: HKQuantity { get }
    var date: DateInterval { get }
}
extension HealthQuantityItem {
    public init(value: ValueType, time: TimeType) {
        self.init(value: value, unit: Self.defaultUnit, time: time)
    }

    public static var hkObjectTypes: Set<HKObjectType> {
        return hkSampleTypes
    }

    public static var hkSampleTypes: Set<HKSampleType> {
        return [HKSampleType.quantityType(forIdentifier: Self.id)!]
    }

    public var hkObject: HKObject {
        return hkSample
    }

    public var hkSample: HKSample {
        return HKQuantitySample(
                type: HKQuantityType.quantityType(forIdentifier: Self.id)!,
                quantity: data, start: date.start, end: date.end,
                device: nil, metadata: nil)
    }
}
extension HealthQuantityItem where TimeType == Date {
    public var date: DateInterval {
        return DateInterval(start: time, end: time)
    }
}
extension HealthQuantityItem where TimeType == DateInterval {
    public var date: DateInterval {
        return time
    }
}
extension HealthQuantityItem where ValueType == Double, UnitType == HealthUnitConvertible {
    public var data: HKQuantity {
        return HKQuantity(unit: unit.hkUnit, doubleValue: value)
    }
}
extension HealthQuantityItem where ValueType == Double, UnitType == HealthUnitConvertible, TimeType == Date {
    public static func convert(object: HKObject) -> Self {
        let object = object as! HKQuantitySample
        return Self.init(value: object.quantity.doubleValue(for: defaultUnit.hkUnit), time: object.startDate)
    }
}
extension HealthQuantityItem where ValueType == Int, UnitType: HealthUnitConvertible {
    public var data: HKQuantity {
        return HKQuantity(unit: unit.hkUnit, doubleValue: Double(value))
    }
}
extension HealthQuantityItem where ValueType == Int, UnitType: HealthUnitConvertible, TimeType == Date {
    public static func convert(object: HKObject) -> Self {
        let object = object as! HKQuantitySample
        return Self.init(value: Int(object.quantity.doubleValue(for: defaultUnit.hkUnit)), time: object.startDate)
    }
}
