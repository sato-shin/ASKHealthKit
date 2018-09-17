//
//  hoge.swift
//  ASKHealthKit
//
//  Created by sato-shin on 2018/09/17.
//  Copyright © 2018年 com.askendiet. All rights reserved.
//

import Foundation
import HealthKit

extension HealthStorableItem where HealthDateTypeIdentifier == HKQuantityTypeIdentifier {
    typealias HealthDataType = Double
    
    static var hkObjectTypes: Set<HKObjectType> {
        return hkSampleTypes
    }
    
    static var hkSampleTypes: Set<HKSampleType> {
        return [HKQuantityType.quantityType(forIdentifier: Self.id)!]
    }
    
    internal var hkObjects: [HKObject] {
        return hkSamples
    }
    
    internal var hkSamples: [HKSample] {
        return [
            HKQuantitySample(type: HKQuantityType.quantityType(forIdentifier: Self.id)!,
                             quantity: data, start: date.start, end: date.end,
                             device: nil, metadata: nil)
        ]
    }
}
