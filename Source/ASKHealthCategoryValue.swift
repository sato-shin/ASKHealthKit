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

    public enum AppleStandHour: HealthCategoryValueProtocol {
        case idle
        case stood

        public var rawValue: Int {
            switch self {
            case .idle: return HKCategoryValueAppleStandHour.idle.rawValue
            case .stood: return HKCategoryValueAppleStandHour.stood.rawValue
            }
        }

        public init(rawValue: Int) {
            switch rawValue {
            case HKCategoryValueAppleStandHour.idle.rawValue: self = .idle
            case HKCategoryValueAppleStandHour.stood.rawValue: self = .stood
            default: self = .idle
            }
        }
    }

    public enum CervicalMucusQuality: HealthCategoryValueProtocol {
        case dry
        case sticky
        case creamy
        case watery
        case eggWhite

        public var rawValue: Int {
            switch self {
            case .dry: return HKCategoryValueCervicalMucusQuality.dry.rawValue
            case .sticky: return HKCategoryValueCervicalMucusQuality.sticky.rawValue
            case .creamy: return HKCategoryValueCervicalMucusQuality.creamy.rawValue
            case .watery: return HKCategoryValueCervicalMucusQuality.watery.rawValue
            case .eggWhite: return HKCategoryValueCervicalMucusQuality.eggWhite.rawValue
            }
        }

        public init(value: Int) {
            switch value {
            case HKCategoryValueCervicalMucusQuality.dry.rawValue: self = .dry
            case HKCategoryValueCervicalMucusQuality.sticky.rawValue: self = .sticky
            case HKCategoryValueCervicalMucusQuality.creamy.rawValue: self = .creamy
            case HKCategoryValueCervicalMucusQuality.watery.rawValue: self = .watery
            case HKCategoryValueCervicalMucusQuality.eggWhite.rawValue: self = .eggWhite
            default: self = .dry
            }
        }
    }

    public enum MenstrualFlow: HealthCategoryValueProtocol {
        case unspecified
        case light
        case medium
        case heavy
        @available(iOS 12.0, *) case none

        public var rawValue: Int {
            switch self {
            case .unspecified: return HKCategoryValueMenstrualFlow.unspecified.rawValue
            case .light: return HKCategoryValueMenstrualFlow.light.rawValue
            case .medium: return HKCategoryValueMenstrualFlow.medium.rawValue
            case .heavy: return HKCategoryValueMenstrualFlow.heavy.rawValue
            case .none:
                if #available(iOS 12.0, *) {
                    return HKCategoryValueMenstrualFlow.none.rawValue
                } else {
                    return -1
                }
            }
        }

        public init(value: Int) {
            switch value {
            case HKCategoryValueMenstrualFlow.unspecified.rawValue: self = .unspecified
            case HKCategoryValueMenstrualFlow.light.rawValue: self = .light
            case HKCategoryValueMenstrualFlow.medium.rawValue: self = .medium
            case HKCategoryValueMenstrualFlow.heavy.rawValue: self = .heavy
            default:
                if #available(iOS 12.0, *), HKCategoryValueMenstrualFlow.none.rawValue == value {
                    self = .none
                } else {
                    self = .unspecified
                }
            }
        }
    }

    public enum OvulationTestResult: HealthCategoryValueProtocol {
        case negative
        case positive
        case indeterminate

        public var rawValue: Int {
            switch self {
            case .negative: return HKCategoryValueOvulationTestResult.negative.rawValue
            case .positive: return HKCategoryValueOvulationTestResult.positive.rawValue
            case .indeterminate: return HKCategoryValueOvulationTestResult.indeterminate.rawValue
            }
        }

        public init(value: Int) {
            switch value {
            case HKCategoryValueOvulationTestResult.negative.rawValue: self = .negative
            case HKCategoryValueOvulationTestResult.positive.rawValue: self = .positive
            case HKCategoryValueOvulationTestResult.indeterminate.rawValue: self = .indeterminate
            default: self = .negative
            }
        }
    }
}
