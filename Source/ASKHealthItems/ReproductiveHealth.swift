//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct IntermenstrualBleeding: HealthCategoryItem, CategoryObjectConvertable {
    public typealias ValueType = NotApplicableCategory
    public typealias TimeType = Date
    public let time: TimeType
    public let value: ValueType

    public init(value: ValueType, time: TimeType) {
        self.value = value
        self.time = time
    }

    internal static let id: HKCategoryTypeIdentifier = .intermenstrualBleeding
    internal var data: Int {
        return value.rawValue
    }
    internal var date: DateInterval {
        return DateInterval(start: time, end: time)
    }

    init?(object: HKObject) {
        return nil
    }
}
