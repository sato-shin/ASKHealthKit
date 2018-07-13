//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct Energy: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryEnergyConsumed
    internal let hkUnit: HKUnit = .kilocalorie()
    internal var start: Date { return time }
    internal var end: Date { return time }

    public let quantity: Double
    public let time: Date
    
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
    internal var start: Date { return time }
    internal var end: Date { return time }

    public let quantity: Double
    public let time: Date
    
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
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: WaterUnit = .milliLitter
    public let quantity: Double
    public let time: Date
    public let unit: WaterUnit
    
    public init(quantity: Double, time: Date, unit: WaterUnit = Water.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }
    
    public init(sample: HKQuantitySample) {
        self.unit = Water.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }

    public var unitString: String {
        return unit.string
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

    internal var string: String {
        switch self {
        case .litter: return "L"
        case .milliLitter: return "mL"
        case .imperialCup, .usCup: return "cup"
        case .imperialOnce, .usOnce: return "fl oz"
        case .imperialPint, .usPint: return "pt"
        }
    }
}
