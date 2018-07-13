//
//  ExaminationResult.swift
//  ASKHealthKit
//
//  Created by sato-shin on 2018/07/13.
//  Copyright © 2018年 com.askendiet. All rights reserved.
//

import Foundation
import HealthKit

public struct UVExposure: ASKHealthQuantityItem {
    static let identifier: HKQuantityTypeIdentifier = .uvExposure
    let hkUnit: HKUnit = .count()
    var quantity: Double { return Double(value) }
    public var value: Int
    public var start: Date
    public var end: Date
    
    public init(value: Int, start: Date, end: Date) {
        self.value = value
        self.start = start
        self.end = end
    }
    
    public var unitString: String {
        return ""
    }
    
    public init(sample: HKQuantitySample) {
        self.value = Int(sample.quantity.doubleValue(for: hkUnit))
        self.start = sample.startDate
        self.end = sample.endDate
    }
}

public struct InsulinDelivery: ASKHealthQuantityItem {
    static var identifier: HKQuantityTypeIdentifier = .insulinDelivery
    var hkUnit: HKUnit = .internationalUnit()
    public let quantity: Double
    public let start: Date
    public let end: Date
    public let purpose: Purpose
    
    public init(quantity: Double, start: Date, end: Date, purpose: Purpose) {
        self.quantity = quantity
        self.start = start
        self.end = end
        self.purpose = purpose
    }
    
    public var hkObject: HKObject? {
        guard let hkType = HKSampleType.quantityType(forIdentifier: InsulinDelivery.identifier) else { return nil }
        
        let hkQuantity = HKQuantity(unit: hkUnit, doubleValue: quantity)
        let metadata: [String: Any] = [HKMetadataKeyInsulinDeliveryReason: NSNumber(integerLiteral: purpose.value)]
        return HKQuantitySample(type: hkType, quantity: hkQuantity, start: start, end: end, device: nil, metadata: metadata)
    }
    
    public init?(sample: HKQuantitySample) {
        guard let purposeValue = sample.metadata?[HKMetadataKeyInsulinDeliveryReason] as? Int,
            let purpose = Purpose(value: purposeValue) else {
                return nil
        }
        self.quantity = sample.quantity.doubleValue(for: hkUnit)
        self.start = sample.startDate
        self.end = sample.endDate
        self.purpose = purpose
    }
    
    public enum Purpose {
        case basal
        case bolus
        
        var value: Int {
            switch self {
            case .basal: return HKInsulinDeliveryReason.basal.rawValue
            case .bolus: return HKInsulinDeliveryReason.bolus.rawValue
            }
        }
        
        init?(value: Int) {
            switch value {
            case HKInsulinDeliveryReason.basal.rawValue: self = .basal
            case HKInsulinDeliveryReason.bolus.rawValue: self = .bolus
            default: return nil
            }
        }
    }
}
