//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct SleepAnalysis: CategoryHealthItem {
    public static let id: ItemIdentifier = .sleepAnalysis

    public typealias ValueType = ASKHealthCategoryValue.SleepAnalysis
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
}
