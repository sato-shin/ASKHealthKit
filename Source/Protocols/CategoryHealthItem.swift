//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol CategoryHealthItem: HealthItem {
    associatedtype ValueType: HealthCategoryValueProtocol
    associatedtype TimeType
    associatedtype OptionType

    var value: ValueType { get }
    var time: TimeType { get }
    var option: OptionType { get }

    init(value: ValueType, time: TimeType, option: OptionType)
    init(_ sample: HKCategorySample)

    var rawTime: DateInterval { get }
}
extension CategoryHealthItem where TimeType == Date {
    public var rawTime: DateInterval {
        return DateInterval(start: time, end: time)
    }
}
extension CategoryHealthItem where TimeType == DateInterval {
    public var rawTime: DateInterval {
        return time
    }
}
extension CategoryHealthItem where ValueType == ASKHealthCategoryValue.NotApplicable {
    public init(time: TimeType, option: OptionType) {
        self.init(value: ASKHealthCategoryValue.NotApplicable(), time: time, option: option)
    }
}
extension CategoryHealthItem where OptionType == Void {
    public init(value: ValueType, time: TimeType) {
        self.init(value: value, time: time, option: ())
    }

    var metadata: [String: Any]? {
        return nil
    }
}
extension CategoryHealthItem where OptionType: MetadataProtocol {
    var metadata: [String: Any]? {
        return option.metadata
    }
}
extension CategoryHealthItem where ValueType == ASKHealthCategoryValue.NotApplicable, OptionType == Void {
    public init(time: TimeType) {
        self.init(value: ASKHealthCategoryValue.NotApplicable(), time: time, option: ())
    }
}
extension CategoryHealthItem where TimeType == Date {
    var date: DateInterval {
        return DateInterval(start: time, end: time)
    }
}
extension CategoryHealthItem where TimeType == DateInterval {
    var date: DateInterval {
        return time
    }
}
extension CategoryHealthItem where TimeType == Date, OptionType == Void {
    public init(_ sample: HKCategorySample) {
        self = Self.init(value: Self.ValueType(rawValue: sample.value), time: sample.startDate)
    }
}
extension CategoryHealthItem where TimeType == DateInterval, OptionType == Void {
    public init(_ sample: HKCategorySample) {
        self = Self.init(value: Self.ValueType(rawValue: sample.value), time: DateInterval(start: sample.startDate, end: sample.endDate))
    }
}
