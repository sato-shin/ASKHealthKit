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

public struct Protein: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryProtein
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

public struct Carbohydrates: ASKHealthQuantityItem {
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

public struct DietaryFiber: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFiber
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

public struct Sugar: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietarySugar
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

public struct TotalFat: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFatTotal
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

public struct SaturatedFat: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFatSaturated
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

public struct MonounsaturatedFat: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFatMonounsaturated
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

public struct PolyunsaturatedFat: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFatPolyunsaturated
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

public struct Cholesterol: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryCholesterol
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Biotin: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryBiotin
    internal let hkUnit: HKUnit = .gramUnit(with: .micro)
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

public struct Folate: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFolate
    internal let hkUnit: HKUnit = .gramUnit(with: .micro)
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

public struct Niacin: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryNiacin
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct PantothenicAcid: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryPantothenicAcid
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Riboflavin: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryRiboflavin
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Thiamin: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryThiamin
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct VitaminA: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminA
    internal let hkUnit: HKUnit = .gramUnit(with: .micro)
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

public struct VitaminB6: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminB6
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct VitaminB12: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminB12
    internal let hkUnit: HKUnit = .gramUnit(with: .micro)
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

public struct VitaminC: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminC
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct VitaminD: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminD
    internal let hkUnit: HKUnit = .gramUnit(with: .micro)
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

public struct VitaminE: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminE
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct VitaminK: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminK
    internal let hkUnit: HKUnit = .gramUnit(with: .micro)
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

public struct Calcium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryCalcium
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Chloride: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryChloride
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Chromium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryChromium
    internal let hkUnit: HKUnit = .gramUnit(with: .micro)
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

public struct Copper: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryCopper
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Iodine: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryIodine
    internal let hkUnit: HKUnit = .gramUnit(with: .micro)
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

public struct Iron: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryIron
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Magnesium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryMagnesium
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Manganese: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryManganese
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Molybdenum: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryMolybdenum
    internal let hkUnit: HKUnit = .gramUnit(with: .micro)
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

public struct Phosphorus: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryPhosphorus
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Potassium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryPotassium
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Selenium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietarySelenium
    internal let hkUnit: HKUnit = .gramUnit(with: .micro)
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

public struct Sodium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietarySodium
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Zinc: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryZinc
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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

public struct Caffeine: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryCaffeine
    internal let hkUnit: HKUnit = .gramUnit(with: .milli)
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
