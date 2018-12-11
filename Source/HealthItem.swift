//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol HealthItem {
    static var hkObjectTypes: Set<HKObjectType> { get }
    static var hkSampleTypes: Set<HKSampleType> { get }
    var hkObject: HKObject { get }
    var hkSample: HKSample { get }
    static func convert(object: HKObject) -> Self
}
