//
// Copyright (c) 2019 Asken Inc. All rights reserved.
//

import HealthKit

public protocol HealthCategoryValueProtocol {
    var rawValue: Int { get }
    init(rawValue: Int)
}

public struct ASKHealthCategoryValue {
    public struct NotApplicable: HealthCategoryValueProtocol {
        public let rawValue: Int = HKCategoryValue.notApplicable.rawValue
        public init() {}
        public init(rawValue: Int) {}
    }

    public struct SleepAnalysis: HealthCategoryValueProtocol {
        public var rawValue: Int { return healthKitValue.rawValue }
        private let healthKitValue: HKCategoryValueSleepAnalysis

        public static let inBed = SleepAnalysis(rawValue: HKCategoryValueSleepAnalysis.inBed.rawValue)
        public static let asleep = SleepAnalysis(rawValue: HKCategoryValueSleepAnalysis.asleep.rawValue)
        public static let awake = SleepAnalysis(rawValue: HKCategoryValueSleepAnalysis.awake.rawValue)

        public init(rawValue: Int) {
            if let value = HKCategoryValueSleepAnalysis(rawValue: rawValue) {
                self.healthKitValue = value
            } else {
                self.healthKitValue = .inBed
            }
        }
    }

    public struct AppleStandHour: HealthCategoryValueProtocol {
        public var rawValue: Int { return healthKitValue.rawValue }
        private let healthKitValue: HKCategoryValueAppleStandHour

        public static let idle = AppleStandHour(rawValue: HKCategoryValueAppleStandHour.idle.rawValue)
        public static let stood = AppleStandHour(rawValue: HKCategoryValueAppleStandHour.stood.rawValue)

        public init(rawValue: Int) {
            if let value = HKCategoryValueAppleStandHour(rawValue: rawValue) {
                self.healthKitValue = value
            } else {
                self.healthKitValue = .idle
            }
        }
    }

    public struct CervicalMucusQuality: HealthCategoryValueProtocol {
        public var rawValue: Int { return healthKitValue.rawValue }
        private let healthKitValue: HKCategoryValueCervicalMucusQuality

        public static let dry = CervicalMucusQuality(rawValue: HKCategoryValueCervicalMucusQuality.dry.rawValue)
        public static let sticky = CervicalMucusQuality(rawValue: HKCategoryValueCervicalMucusQuality.sticky.rawValue)
        public static let creamy = CervicalMucusQuality(rawValue: HKCategoryValueCervicalMucusQuality.creamy.rawValue)
        public static let watery = CervicalMucusQuality(rawValue: HKCategoryValueCervicalMucusQuality.watery.rawValue)
        public static let eggWhite = CervicalMucusQuality(rawValue: HKCategoryValueCervicalMucusQuality.eggWhite.rawValue)

        public init(rawValue: Int) {
            if let value = HKCategoryValueCervicalMucusQuality(rawValue: rawValue) {
                self.healthKitValue = value
            } else {
                self.healthKitValue = .dry
            }
        }
    }

    public struct MenstrualFlow: HealthCategoryValueProtocol {
        public var rawValue: Int { return healthKitValue.rawValue }
        private let healthKitValue: HKCategoryValueMenstrualFlow

        public static let unspecified = MenstrualFlow(rawValue: HKCategoryValueMenstrualFlow.unspecified.rawValue)
        public static let light = MenstrualFlow(rawValue: HKCategoryValueMenstrualFlow.light.rawValue)
        public static let medium = MenstrualFlow(rawValue: HKCategoryValueMenstrualFlow.medium.rawValue)
        public static let heavy = MenstrualFlow(rawValue: HKCategoryValueMenstrualFlow.heavy.rawValue)
        @available(iOS 12.0, *) private static let none = MenstrualFlow(rawValue: HKCategoryValueMenstrualFlow.none.rawValue)

        public init(rawValue: Int) {
            if let value = HKCategoryValueMenstrualFlow(rawValue: rawValue) {
                self.healthKitValue = value
            } else {
                self.healthKitValue = .unspecified
            }
        }
    }

    public struct OvulationTestResult: HealthCategoryValueProtocol {
        public var rawValue: Int { return healthKitValue.rawValue }
        private let healthKitValue: HKCategoryValueOvulationTestResult

        public static let negative = OvulationTestResult(rawValue: HKCategoryValueOvulationTestResult.negative.rawValue)
        public static let positive = OvulationTestResult(rawValue: HKCategoryValueOvulationTestResult.positive.rawValue)
        public static let indeterminate = OvulationTestResult(rawValue: HKCategoryValueOvulationTestResult.indeterminate.rawValue)

        public init(rawValue: Int) {
            if let value = HKCategoryValueOvulationTestResult(rawValue: rawValue) {
                self.healthKitValue = value
            } else {
                self.healthKitValue = .negative
            }
        }
    }
}
