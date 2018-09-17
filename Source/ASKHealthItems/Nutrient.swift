//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct Energy: HealthQuantityItem, QuantityObjectConvertable {
    public typealias ValueType = Double
    public typealias UnitType = EnergyUnit
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .kilocalorie
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, time: TimeType, unit: UnitType) {
        self.value = value
        self.time = time
        self.unit = unit
    }

    // convertable implements
    internal static var id: HKQuantityTypeIdentifier = .dietaryEnergyConsumed
    internal var data: HKQuantity {
        return HKQuantity(unit: unit.hkUnit, doubleValue: value)
    }
    internal var date: DateInterval {
        return DateInterval(start: time, end: time)
    }
    internal init?(object: HKObject) {
        guard let object = object as? HKQuantitySample else {
            return nil
        }
        let unit = Energy.defaultUnit
        self.value = object.quantity.doubleValue(for: unit.hkUnit)
        self.unit = unit
        self.time = object.startDate
    }
}

public struct Protein: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryProtein
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .g
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Protein.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Protein.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Carbohydrates: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryCarbohydrates
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .g
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit
    
    public init(quantity: Double, time: Date, unit: NutrientUnit = Carbohydrates.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }
    
    public init(sample: HKQuantitySample) {
        self.unit = Carbohydrates.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct DietaryFiber: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFiber
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .g
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = DietaryFiber.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = DietaryFiber.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Sugar: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietarySugar
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .g
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Sugar.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Sugar.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct TotalFat: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFatTotal
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .g
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = TotalFat.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = TotalFat.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct SaturatedFat: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFatSaturated
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .g
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = SaturatedFat.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = SaturatedFat.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct MonounsaturatedFat: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFatMonounsaturated
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .g
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = MonounsaturatedFat.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = MonounsaturatedFat.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct PolyunsaturatedFat: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFatPolyunsaturated
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .g
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = PolyunsaturatedFat.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = PolyunsaturatedFat.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Cholesterol: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryCholesterol
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Cholesterol.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Cholesterol.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Biotin: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryBiotin
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mcg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Biotin.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Biotin.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Folate: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryFolate
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mcg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Folate.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Folate.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Niacin: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryNiacin
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Niacin.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Niacin.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct PantothenicAcid: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryPantothenicAcid
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = PantothenicAcid.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = PantothenicAcid.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Riboflavin: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryRiboflavin
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Riboflavin.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Riboflavin.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Thiamin: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryThiamin
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Thiamin.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Thiamin.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct VitaminA: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminA
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mcg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = VitaminA.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = VitaminA.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct VitaminB6: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminB6
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = VitaminB6.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = VitaminB6.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct VitaminB12: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminB12
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mcg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = VitaminB12.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = VitaminB12.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct VitaminC: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminC
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = VitaminC.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = VitaminC.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct VitaminD: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminD
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mcg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = VitaminD.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = VitaminD.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct VitaminE: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminE
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = VitaminE.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = VitaminE.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct VitaminK: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryVitaminK
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mcg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = VitaminK.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = VitaminK.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Calcium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryCalcium
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Calcium.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Calcium.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Chloride: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryChloride
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Chloride.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Chloride.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Chromium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryChromium
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mcg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Chromium.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Chromium.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Copper: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryCopper
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Copper.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Copper.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Iodine: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryIodine
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mcg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Iodine.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Iodine.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Iron: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryIron
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Iron.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Iron.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Magnesium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryMagnesium
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Magnesium.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Magnesium.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Manganese: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryManganese
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Manganese.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Manganese.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Molybdenum: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryMolybdenum
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mcg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Molybdenum.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Molybdenum.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Phosphorus: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryPhosphorus
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Phosphorus.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Phosphorus.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Potassium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryPotassium
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Potassium.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Potassium.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Selenium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietarySelenium
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mcg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Selenium.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Selenium.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Sodium: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietarySodium
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Sodium.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Sodium.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Zinc: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryZinc
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Zinc.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Zinc.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
        self.time = sample.startDate
    }
}

public struct Caffeine: ASKHealthQuantityItem {
    internal static let identifier: HKQuantityTypeIdentifier = .dietaryCaffeine
    internal var hkUnit: HKUnit { return unit.hkUnit }
    internal var start: Date { return time }
    internal var end: Date { return time }

    public static var defaultUnit: NutrientUnit = .mg
    public let quantity: Double
    public let time: Date
    public let unit: NutrientUnit

    public init(quantity: Double, time: Date, unit: NutrientUnit = Caffeine.defaultUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }

    public init(sample: HKQuantitySample) {
        self.unit = Caffeine.defaultUnit
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit)
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
