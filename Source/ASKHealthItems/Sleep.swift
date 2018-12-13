//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct SleepAnalysis: HealthCategoryItem {
    public static let id: HKCategoryTypeIdentifier = .sleepAnalysis

    public typealias ValueType = Category.SleepAnalysis
    public typealias TimeType = DateInterval

    public let value: ValueType
    public let time: TimeType

    public init(value: ValueType, time: TimeType) {
        self.value = value
        self.time = time
    }
}
