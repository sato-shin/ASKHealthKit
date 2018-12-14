//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct BasalBodyTemperature: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .basalBodyTemperature

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Temperature
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .celsius
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct CervicalMucusQuality: HealthCategoryItem {
    public static let id: HKCategoryTypeIdentifier = .cervicalMucusQuality

    public typealias ValueType = Category.CervicalMucusQuality
    public typealias TimeType = Date
    public typealias OptionType = Void

    public let value: ValueType
    public let time: TimeType
    public let option: OptionType

    public init(value: ValueType, time: TimeType, option: OptionType) {
        self.value = value
        self.time = time
        self.option = option
    }

    public static func convert(object: HKObject) -> CervicalMucusQuality {
        let object = object as! HKCategorySample
        let value = ValueType(value: object.value)!
        return self.init(value: value, time: object.startDate)
    }
}

public struct MenstrualFlow: HealthCategoryItem {
    public static var id: HKCategoryTypeIdentifier = .menstrualFlow

    public typealias ValueType = Category.MenstrualFlow
    public typealias TimeType = Date
    public typealias OptionType = Void

    public let value: ValueType
    public let time: TimeType
    public let option: OptionType

    public init(value: ValueType, time: TimeType, option: OptionType) {
        self.value = value
        self.time = time
        self.option = option
    }

    public static func convert(object: HKObject) -> MenstrualFlow {
        let object = object as! HKCategorySample
        let value = ValueType(value: object.value)!
        return self.init(value: value, time: object.startDate)
    }
}

public struct OvulationTestResult: HealthCategoryItem {
    public static var id: HKCategoryTypeIdentifier = .ovulationTestResult

    public typealias ValueType = Category.OvulationTestResult
    public typealias TimeType = Date
    public typealias OptionType = Void

    public let value: ValueType
    public let time: TimeType
    public let option: OptionType

    public init(value: ValueType, time: TimeType, option: OptionType) {
        self.value = value
        self.time = time
        self.option = option
    }

    public static func convert(object: HKObject) -> OvulationTestResult {
        let object = object as! HKCategorySample
        let value = ValueType(value: object.value)!
        return self.init(value: value, time: object.startDate)
    }
}

public struct SexualActivity: HealthCategoryItem {
    public static var id: HKCategoryTypeIdentifier = .sexualActivity

    public typealias ValueType = Category.NotApplicable
    public typealias TimeType = Date
    public typealias OptionType = Void

    public let value: ValueType
    public let time: TimeType
    public let option: OptionType

    public init(value: ValueType, time: TimeType, option: OptionType) {
        self.value = value
        self.time = time
        self.option = option
    }
}

public struct IntermenstrualBleeding: HealthCategoryItem {
    public static let id: HKCategoryTypeIdentifier = .intermenstrualBleeding

    public typealias ValueType = Category.NotApplicable
    public typealias TimeType = Date
    public typealias OptionType = Void

    public let value: ValueType
    public let time: TimeType
    public let option: OptionType

    public init(value: ValueType, time: TimeType, option: OptionType) {
        self.value = value
        self.time = time
        self.option = option
    }
}
