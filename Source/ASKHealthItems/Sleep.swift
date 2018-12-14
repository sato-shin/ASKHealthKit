//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct SleepAnalysis: HealthCategoryItem {
    public static let id: HKCategoryTypeIdentifier = .sleepAnalysis

    public typealias ValueType = Category.SleepAnalysis
    public typealias TimeType = DateInterval
    public typealias OptionType = Void

    public let value: ValueType
    public let time: TimeType
    public let option: OptionType

    public init(value: ValueType, time: TimeType, option: OptionType) {
        self.value = value
        self.time = time
        self.option = option
    }

    public static func convert(object: HKObject) -> SleepAnalysis {
        let object = object as! HKCategorySample
        let value = ValueType(value: object.value)!
        return self.init(value: value, time: DateInterval(start: object.startDate, end: object.endDate))
    }
}
