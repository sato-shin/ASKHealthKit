//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol HealthCorrelationItem: HealthItem {
    associatedtype ValueType
    associatedtype TimeType

    static var id: HKCorrelationTypeIdentifier { get }

    var value: ValueType { get }
    var time: TimeType { get }

    init(value: ValueType, time: TimeType)

    static func convert(object: HKObject) -> Self
    var data: Set<HKSample> { get }
    var date: DateInterval { get }
}
extension HealthCorrelationItem {
    public static var hkObjectType: HKObjectType {
        return hkSampleType
    }

    public static var hkSampleType: HKSampleType {
        return HKSampleType.correlationType(forIdentifier: Self.id)!
    }

    public var hkObject: HKObject {
        return hkSample
    }

    public var hkSample: HKSample {
        return HKCorrelation(
                type: HKCorrelationType.correlationType(forIdentifier: Self.id)!,
                start: date.start, end: date.end, objects: data,
                device: nil, metadata: nil
        )
    }
}
extension HealthCorrelationItem where TimeType == Date {
    public var date: DateInterval {
        return DateInterval(start: time, end: time)
    }
}