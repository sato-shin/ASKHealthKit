//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol HealthItem {
    static var writableAuthorizationTypes: Set<HKSampleType> { get }
    static var readableAuthorizationTypes: Set<HKObjectType> { get }
    static var hkObjectType: HKObjectType { get }
    static var hkSampleType: HKSampleType { get }
    var hkObject: HKObject { get }
    var hkSample: HKSample { get }
    static func convert(object: HKObject) -> Self
}
