//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct BasalBodyTemperature: QuantityHealthItem {
    public static let id: ItemIdentifier = .basalBodyTemperature

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Temperature
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .celsius
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

public struct CervicalMucusQuality: CategoryHealthItem {
    public static let id: ItemIdentifier = .cervicalMucusQuality

    public typealias ValueType = ASKHealthCategoryValue.CervicalMucusQuality
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

public struct MenstrualFlow: CategoryHealthItem {
    public static var id: ItemIdentifier = .menstrualFlow

    public typealias ValueType = ASKHealthCategoryValue.MenstrualFlow
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

public struct OvulationTestResult: CategoryHealthItem {
    public static var id: ItemIdentifier = .ovulationTestResult

    public typealias ValueType = ASKHealthCategoryValue.OvulationTestResult
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

public struct SexualActivity: CategoryHealthItem {
    public static var id: ItemIdentifier = .sexualActivity

    public typealias ValueType = ASKHealthCategoryValue.NotApplicable
    public typealias TimeType = Date
    public typealias OptionType = Metadata.SexualActivity

    public let value: ValueType
    public let time: TimeType
    public let option: OptionType

    public init(value: ValueType, time: TimeType, option: OptionType) {
        self.value = value
        self.time = time
        self.option = option
    }

    public init(_ sample: HKCategorySample) {
        self.value = ASKHealthCategoryValue.NotApplicable()
        self.time = sample.startDate
        self.option = Metadata.SexualActivity(sample.metadata?[HKMetadataKeySexualActivityProtectionUsed] as? Bool)
    }
}

public struct IntermenstrualBleeding: CategoryHealthItem {
    public static let id: ItemIdentifier = .intermenstrualBleeding

    public typealias ValueType = ASKHealthCategoryValue.NotApplicable
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
