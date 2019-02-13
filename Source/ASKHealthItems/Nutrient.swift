//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public struct EnergyIntake: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryEnergyConsumed

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

public struct Protein: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryProtein

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

public struct Carbohydrate: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryCarbohydrates

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

public struct Fiber: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryFiber

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

public struct Sugar: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietarySugar

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

public struct Cholesterol: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryCholesterol

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

public struct MonounsaturatedFat: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryFatMonounsaturated

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

public struct PolyunsaturatedFat: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryFatPolyunsaturated

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

public struct SaturatedFat: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryFatSaturated

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

public struct TotalFat: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryFatTotal

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

public struct Biotin: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryBiotin

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

public struct Folate: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryFolate

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

public struct Niacin: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryNiacin

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

public struct PantothenicAcid: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryPantothenicAcid

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

public struct Thiamin: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryThiamin

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

public struct VitaminA: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryVitaminA

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

public struct Riboflavin: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryRiboflavin

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

public struct VitaminB6: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryVitaminB6

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

public struct VitaminB12: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryVitaminB12

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

public struct VitaminC: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryVitaminC

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

public struct VitaminD: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryVitaminD

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

public struct VitaminE: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryVitaminE

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

public struct VitaminK: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryVitaminK

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

public struct Calcium: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryCalcium

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

public struct Chloride: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryChloride

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

public struct Chromium: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryChromium

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

public struct Copper: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryCopper

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

public struct Iodine: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryIodine

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

public struct Iron: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryIron

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

public struct Magnesium: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryMagnesium

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

public struct Manganese: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryManganese

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

public struct Molybdenum: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryMolybdenum

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

public struct Phosphorus: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryPhosphorus

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

public struct Potassium: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryPotassium

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

public struct Selenium: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietarySelenium

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

public struct Sodium: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietarySodium

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

public struct Zinc: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryZinc

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

public struct Water: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryWater

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

public struct Caffeine: QuantityHealthItem {
    public static let id: ItemIdentifier = .dietaryCaffeine

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
