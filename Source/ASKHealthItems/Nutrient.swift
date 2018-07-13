//
//  Nutrient.swift
//  ASKHealthKit
//
//  Created by sato-shin on 2018/07/13.
//  Copyright © 2018年 com.askendiet. All rights reserved.
//

import Foundation
import HealthKit

public struct Energy: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryEnergyConsumed
    internal let hkUnit: HKUnit = .kilocalorie()
    public let quantity: Double
    public let time: Date
    internal var start: Date {
        return time
    }
    internal var end: Date {
        return time
    }
    
    public init(quantity: Double, time: Date) {
        self.quantity = quantity
        self.time = time
    }
    
    public init(sample: HKQuantitySample) {
        self.quantity = sample.quantity.doubleValue(for: hkUnit)
        self.time = sample.startDate
    }
}

public struct Carbohydrate: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryCarbohydrates
    internal let hkUnit: HKUnit = .gramUnit(with: .none)
    public let quantity: Double
    public let time: Date
    internal var start: Date { return time }
    internal var end: Date { return time }
    
    public init(quantity: Double, time: Date) {
        self.quantity = quantity
        self.time = time
    }
    
    public init(sample: HKQuantitySample) {
        self.quantity = sample.quantity.doubleValue(for: hkUnit)
        self.time = sample.startDate
    }
}

public struct Water: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryWater
    internal var hkUnit: HKUnit { return unit.hkUnit }
    public let quantity: Double
    public let time: Date
    internal var start: Date { return time }
    internal var end: Date { return time }
    public let unit: WaterUnit
    
    public init(quantity: Double, time: Date, unit: WaterUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }
    
    public init(sample: HKQuantitySample) {
        self.unit = .milliLitter
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit) // TODO: 単位指定できるように
        self.time = sample.startDate
    }
}

public enum WaterUnit {
    case litter
    case milliLitter
    case imperialCup
    case imperialOnce
    case imperialPint
    case usCup
    case usOnce
    case usPint
    
    internal var hkUnit: HKUnit {
        switch self {
        case .litter: return .literUnit(with: .none)
        case .milliLitter: return .literUnit(with: .milli)
        case .imperialCup: return .cupImperial()
        case .imperialOnce: return .fluidOunceImperial()
        case .imperialPint: return .pintImperial()
        case .usCup: return .cupUS()
        case .usOnce: return .fluidOunceUS()
        case .usPint: return .pintUS()
        }
    }
}
