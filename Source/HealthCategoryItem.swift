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

    static func convert(object: HKObject) -> Self
    var data: Int { get }
    var date: DateInterval { get }
}
extension HealthCategoryItem {
    public static var hkObjectTypes: Set<HKObjectType> {
        return hkSampleTypes
    }

    public static var hkSampleTypes: Set<HKSampleType> {
        return [HKSampleType.categoryType(forIdentifier: Self.id)!]
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
extension HealthCategoryItem where ValueType == Category.NotApplicable {
    public init(time: TimeType) {
        self.init(value: Category.NotApplicable(), time: time)
    }
    public var data: Int {
        return value.rawValue
    }
}
extension HealthCategoryItem where ValueType == Category.SleepAnalysis {
    public var data: Int {
        return value.rawValue
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
    public struct NotApplicable {
        internal let rawValue: Int = HKCategoryValue.notApplicable.rawValue
    }

    public enum SleepAnalysis {
        case inBed
        case asleep
        case awake

        internal var rawValue: Int {
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
}

