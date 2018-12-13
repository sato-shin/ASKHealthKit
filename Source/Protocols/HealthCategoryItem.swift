//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol HealthCategoryItem: HealthItem {
    associatedtype ValueType
    associatedtype TimeType

    static var id: HKCategoryTypeIdentifier { get }

    var value: ValueType { get }
    var time: TimeType { get }

    init(value: ValueType, time: TimeType)

    var data: Int { get }
    var date: DateInterval { get }
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
                device: nil, metadata: nil)
    }
}
extension HealthCategoryItem where ValueType: HealthCategoryValueProtocol {
    public var data: Int {
        return value.rawValue
    }
}
extension HealthCategoryItem where ValueType == Category.NotApplicable {
    public init(time: TimeType) {
        self.init(value: Category.NotApplicable(), time: time)
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
extension HealthCategoryItem where ValueType == Category.NotApplicable, TimeType == Date {
    public static func convert(object: HKObject) -> Self {
        let object = object as! HKCategorySample
        return self.init(time: object.startDate)
    }
}
extension HealthCategoryItem where ValueType == Category.NotApplicable, TimeType == DateInterval {
    public static func convert(object: HKObject) -> Self {
        let object = object as! HKCategorySample
        return self.init(time: DateInterval(start: object.startDate, end: object.endDate))
    }
}
extension HealthCategoryItem where ValueType == Category.SleepAnalysis, TimeType == DateInterval {
    public static func convert(object: HKObject) -> Self {
        let object = object as! HKCategorySample
        let value = ValueType(value: object.value)!
        return self.init(value: value, time: DateInterval(start: object.startDate, end: object.endDate))
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
}

public protocol HealthCategoryValueProtocol {
    var rawValue: Int { get }
}
