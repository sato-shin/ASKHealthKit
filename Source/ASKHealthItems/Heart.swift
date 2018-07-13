//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

private let bloodPressureUnit: HKUnit = .millimeterOfMercury()

public struct BloodPressure: ASKHealthCorrelationItem {
    internal static let identifier: HKCorrelationTypeIdentifier = .bloodPressure
    internal var hkSamples: Set<HKSample>? {
        guard let ds = diastolic.hkObject as? HKSample, let ss = systolic.hkObject as? HKSample else { return nil }
        return [ds, ss]
    }
    internal var start: Date { return time }
    internal var end: Date { return time }

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
    
    internal init?(sample: HKCorrelation) {
        guard let diastolicType = BloodPressureDiastolic.hkObjectTypes.first,
            let diastolicObject = sample.objects(for: diastolicType).first as? HKQuantitySample,
            let systolicType = BloodPressureSystolic.hkObjectTypes.first,
            let systolicObject = sample.objects(for: systolicType).first as? HKQuantitySample else {
                return nil
        }
        self.init(
            diastolic: Int(diastolicObject.quantity.doubleValue(for: bloodPressureUnit)),
            systolic: Int(systolicObject.quantity.doubleValue(for: bloodPressureUnit)),
            time: sample.startDate
        )
    }

    public static var hkSampleTypes: [HKSampleType] {
        return BloodPressureDiastolic.hkSampleTypes + BloodPressureSystolic.hkSampleTypes
    }
    public static var hkObjectTypes: [HKObjectType] {
        return hkSampleTypes
    }
}

public struct BloodPressureDiastolic: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .bloodPressureDiastolic
    internal var hkUnit: HKUnit = bloodPressureUnit
    internal var quantity: Double { return Double(value) }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public var value: Int
    public var time: Date
    
    public init(value: Int, time: Date) {
        self.value = value
        self.time = time
    }
    
    internal init?(sample: HKQuantitySample) {
        self.value = Int(sample.quantity.doubleValue(for: hkUnit))
        self.time = sample.startDate
    }
}

public struct BloodPressureSystolic: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .bloodPressureSystolic
    internal var hkUnit: HKUnit = bloodPressureUnit
    internal var quantity: Double { return Double(value) }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public var value: Int
    public var time: Date
    
    public init(value: Int, time: Date) {
        self.value = value
        self.time = time
    }
    
    internal init?(sample: HKQuantitySample) {
        self.value = Int(sample.quantity.doubleValue(for: hkUnit))
        self.time = sample.startDate
    }
}
