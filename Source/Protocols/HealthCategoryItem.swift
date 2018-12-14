//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol HealthCategoryItem: HealthItem {
    associatedtype ValueType
    associatedtype TimeType
    associatedtype OptionType

    static var id: HKCategoryTypeIdentifier { get }

    var value: ValueType { get }
    var time: TimeType { get }
    var option: OptionType { get }

    init(value: ValueType, time: TimeType, option: OptionType)

    var data: Int { get }
    var date: DateInterval { get }
    var metadata: [String: Any]? { get }
}
extension HealthCategoryItem {
    public static var hkObjectType: HKObjectType {
        return hkSampleType
    }

    public static var hkSampleType: HKSampleType {
        return HKSampleType.categoryType(forIdentifier: Self.id)!
    }

    public static var readableAuthorizationTypes: Set<HKObjectType> {
        return writableAuthorizationTypes
    }

    public static var writableAuthorizationTypes: Set<HKSampleType> {
        return [hkSampleType]
    }

    public var hkObject: HKObject {
        return hkSample
    }

    public var hkSample: HKSample {
        return HKCategorySample(
                type: HKSampleType.categoryType(forIdentifier: Self.id)!,
                value: data, start: date.start, end: date.end,
                device: nil, metadata: metadata)
    }
}
extension HealthCategoryItem where ValueType: HealthCategoryValueProtocol {
    public var data: Int {
        return value.rawValue
    }
}
extension HealthCategoryItem where ValueType == Category.NotApplicable {
    public init(time: TimeType, option: OptionType) {
        self.init(value: Category.NotApplicable(), time: time, option: option)
    }
}
extension HealthCategoryItem where OptionType == Void {
    public init(value: ValueType, time: TimeType) {
        self.init(value: value, time: time, option: ())
    }

    public var metadata: [String: Any]? {
        return nil
    }
}
extension HealthCategoryItem where OptionType: MetadataProtocol {
    public var metadata: [String: Any]? {
        return option.metadata
    }
}
extension HealthCategoryItem where ValueType == Category.NotApplicable, OptionType == Void {
    public init(time: TimeType) {
        self.init(value: Category.NotApplicable(), time: time, option: ())
    }
}
extension HealthCategoryItem where TimeType == Date {
    public var date: DateInterval {
        return DateInterval(start: time, end: time)
    }
}
extension HealthCategoryItem where TimeType == DateInterval {
    public var date: DateInterval {
        return time
    }
}
extension HealthCategoryItem where ValueType == Category.NotApplicable, TimeType == Date, OptionType == Void {
    public static func convert(object: HKObject) -> Self {
        let object = object as! HKCategorySample
        return self.init(time: object.startDate)
    }
}
extension HealthCategoryItem where ValueType == Category.NotApplicable, TimeType == DateInterval, OptionType == Void {
    public static func convert(object: HKObject) -> Self {
        let object = object as! HKCategorySample
        return self.init(time: DateInterval(start: object.startDate, end: object.endDate))
    }
}

public struct Category {
    public struct NotApplicable: HealthCategoryValueProtocol {
        public let rawValue: Int = HKCategoryValue.notApplicable.rawValue
    }

    public enum SleepAnalysis: HealthCategoryValueProtocol {
        case inBed
        case asleep
        case awake

        public var rawValue: Int {
            switch self {
            case .inBed: return HKCategoryValueSleepAnalysis.inBed.rawValue
            case .asleep: return HKCategoryValueSleepAnalysis.asleep.rawValue
            case .awake: return HKCategoryValueSleepAnalysis.awake.rawValue
            }
        }

        internal init?(value: Int) {
            switch value {
            case HKCategoryValueSleepAnalysis.inBed.rawValue: self = .inBed
            case HKCategoryValueSleepAnalysis.asleep.rawValue: self = .asleep
            case HKCategoryValueSleepAnalysis.awake.rawValue: self = .awake
            default: return nil
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

        internal init?(value: Int) {
            switch value {
            case HKCategoryValueAppleStandHour.idle.rawValue: self = .idle
            case HKCategoryValueAppleStandHour.stood.rawValue: self = .stood
            default: return nil
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

        internal init?(value: Int) {
            switch value {
            case HKCategoryValueCervicalMucusQuality.dry.rawValue: self = .dry
            case HKCategoryValueCervicalMucusQuality.sticky.rawValue: self = .sticky
            case HKCategoryValueCervicalMucusQuality.creamy.rawValue: self = .creamy
            case HKCategoryValueCervicalMucusQuality.watery.rawValue: self = .watery
            case HKCategoryValueCervicalMucusQuality.eggWhite.rawValue: self = .eggWhite
            default: return nil
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

        internal init?(value: Int) {
            switch value {
            case HKCategoryValueMenstrualFlow.unspecified.rawValue: self = .unspecified
            case HKCategoryValueMenstrualFlow.light.rawValue: self = .light
            case HKCategoryValueMenstrualFlow.medium.rawValue: self = .medium
            case HKCategoryValueMenstrualFlow.heavy.rawValue: self = .heavy
            default:
                if #available(iOS 12.0, *), HKCategoryValueMenstrualFlow.none.rawValue == value {
                    self = .none
                } else {
                    return nil
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

        internal init?(value: Int) {
            switch value {
            case HKCategoryValueOvulationTestResult.negative.rawValue: self = .negative
            case HKCategoryValueOvulationTestResult.positive.rawValue: self = .positive
            case HKCategoryValueOvulationTestResult.indeterminate.rawValue: self = .indeterminate
            default: return nil
            }
        }
    }
}

public protocol HealthCategoryValueProtocol {
    var rawValue: Int { get }
}
