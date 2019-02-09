//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol CorrelationHealthItem: HealthItem {
    associatedtype ValueType
    associatedtype TimeType

    var value: ValueType { get }
    var time: TimeType { get }

    init(value: ValueType, time: TimeType)

    var data: Set<HKSample> { get }
    var date: DateInterval { get }
}
extension CorrelationHealthItem where TimeType == Date {
    public var date: DateInterval {
        return DateInterval(start: time, end: time)
    }
}