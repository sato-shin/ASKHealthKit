//
//  Heart.swift
//  ASKHealthKit
//
//  Created by sato-shin on 2018/07/13.
//  Copyright © 2018年 com.askendiet. All rights reserved.
//

import Foundation
import HealthKit

private let bloodPressureUnit: HKUnit = .millimeterOfMercury()

public struct BloodPressure: ASKHealthCorrelationItem {
    static let identifier: HKCorrelationTypeIdentifier = .bloodPressure
    var hkSamples: Set<HKSample>? {
        guard let ds = diastolic.hkObject as? HKSample, let ss = systolic.hkObject as? HKSample else { return nil }
        return [ds, ss]
    }
    var start: Date { return time }
    var end: Date { return time }
    public let diastolicValue: Int
    public let systolicValue: Int
    public let time: Date
    
    public let diastolic: BloodPressureDiastolic
    public let systolic: BloodPressureSystolic
    
    public init(diastolic: Int, systolic: Int, time: Date) {
        self.diastolicValue = diastolic
        self.systolicValue = systolic
        self.time = time
        
        self.diastolic = BloodPressureDiastolic(value: diastolic, time: time)
        self.systolic = BloodPressureSystolic(value: systolic, time: time)
    }
    
    init?(sample: HKCorrelation) {
        guard let diastolicType = BloodPressureDiastolic.hkObjectType,
            let diastolicObject = sample.objects(for: diastolicType).first as? HKQuantitySample,
            let systolicType = BloodPressureSystolic.hkObjectType,
            let systolicObject = sample.objects(for: systolicType).first as? HKQuantitySample else {
                return nil
        }
        self.init(
            diastolic: Int(diastolicObject.quantity.doubleValue(for: bloodPressureUnit)),
            systolic: Int(systolicObject.quantity.doubleValue(for: bloodPressureUnit)),
            time: sample.startDate
        )
    }
}

public struct BloodPressureDiastolic: ASKHealthQuantityItem {
    static let identifier: HKQuantityTypeIdentifier = .bloodPressureDiastolic
    var hkUnit: HKUnit = bloodPressureUnit
    var quantity: Double { return Double(value) }
    var start: Date { return time }
    var end: Date { return time }
    public var value: Int
    public var time: Date
    
    init(value: Int, time: Date) {
        self.value = value
        self.time = time
    }
    
    init?(sample: HKQuantitySample) {
        self.value = Int(sample.quantity.doubleValue(for: hkUnit))
        self.time = sample.startDate
    }
}

public struct BloodPressureSystolic: ASKHealthQuantityItem {
    static let identifier: HKQuantityTypeIdentifier = .bloodPressureSystolic
    var hkUnit: HKUnit = bloodPressureUnit
    var quantity: Double { return Double(value) }
    var start: Date { return time }
    var end: Date { return time }
    public var value: Int
    public var time: Date
    
    init(value: Int, time: Date) {
        self.value = value
        self.time = time
    }
    
    init?(sample: HKQuantitySample) {
        self.value = Int(sample.quantity.doubleValue(for: hkUnit))
        self.time = sample.startDate
    }
}
