//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct MindfulTime: CategoryHealthItem {
    public static let id: ItemIdentifier = .mindfulSession

    public typealias ValueType = ASKHealthCategoryValue.NotApplicable
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
