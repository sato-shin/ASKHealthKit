//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public struct EnergyIntake: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryEnergyConsumed

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Energy
    public typealias TimeType = DateInterval

    public static let defaultUnit: UnitType = .kilocalorie
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Protein: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryProtein

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Carbohydrate: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryCarbohydrates

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Fiber: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryFiber

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Sugar: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietarySugar

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Cholesterol: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryCholesterol

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct MonounsaturatedFat: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryFatMonounsaturated

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct PolyunsaturatedFat: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryFatPolyunsaturated

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct SaturatedFat: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryFatSaturated

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct TotalFat: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryFatTotal

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Biotin: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryBiotin

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Folate: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryFolate

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Niacin: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryNiacin

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct PantothenicAcid: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryPantothenicAcid

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Thiamin: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryThiamin

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct VitaminA: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryVitaminA

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Riboflavin: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryRiboflavin

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct VitaminB6: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryVitaminB6

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct VitaminB12: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryVitaminB12

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct VitaminC: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryVitaminC

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct VitaminD: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryVitaminD

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct VitaminE: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryVitaminE

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct VitaminK: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryVitaminK

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Calcium: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryCalcium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Chloride: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryChloride

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Chromium: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryChromium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Copper: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryCopper

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Iodine: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryIodine

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Iron: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryIron

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Magnesium: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryMagnesium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Manganese: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryManganese

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Molybdenum: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryMolybdenum

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Phosphorus: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryPhosphorus

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Potassium: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryPotassium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Selenium: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietarySelenium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Sodium: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietarySodium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Zinc: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryZinc

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Water: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryWater

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Water
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .milliLitter
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}

public struct Caffeine: HealthQuantityItem {
    public static let id: HKQuantityTypeIdentifier = .dietaryCaffeine

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType

    public init(value: ValueType, unit: UnitType, time: TimeType) {
        self.value = value
        self.unit = unit
        self.time = time
    }
}
