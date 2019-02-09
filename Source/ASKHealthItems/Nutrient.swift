//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public struct EnergyIntake: QuantityHealthItem {
    public static let id: Item.Identifier = .dietaryEnergyConsumed

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
    public static let id: Item.Identifier = .dietaryProtein

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
    public static let id: Item.Identifier = .dietaryCarbohydrates

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
    public static let id: Item.Identifier = .dietaryFiber

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
    public static let id: Item.Identifier = .dietarySugar

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
    public static let id: Item.Identifier = .dietaryCholesterol

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
    public static let id: Item.Identifier = .dietaryFatMonounsaturated

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
    public static let id: Item.Identifier = .dietaryFatPolyunsaturated

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
    public static let id: Item.Identifier = .dietaryFatSaturated

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
    public static let id: Item.Identifier = .dietaryFatTotal

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
    public static let id: Item.Identifier = .dietaryBiotin

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
    public static let id: Item.Identifier = .dietaryFolate

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
    public static let id: Item.Identifier = .dietaryNiacin

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
    public static let id: Item.Identifier = .dietaryPantothenicAcid

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
    public static let id: Item.Identifier = .dietaryThiamin

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
    public static let id: Item.Identifier = .dietaryVitaminA

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
    public static let id: Item.Identifier = .dietaryRiboflavin

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
    public static let id: Item.Identifier = .dietaryVitaminB6

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
    public static let id: Item.Identifier = .dietaryVitaminB12

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
    public static let id: Item.Identifier = .dietaryVitaminC

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
    public static let id: Item.Identifier = .dietaryVitaminD

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
    public static let id: Item.Identifier = .dietaryVitaminE

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
    public static let id: Item.Identifier = .dietaryVitaminK

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
    public static let id: Item.Identifier = .dietaryCalcium

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
    public static let id: Item.Identifier = .dietaryChloride

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
    public static let id: Item.Identifier = .dietaryChromium

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
    public static let id: Item.Identifier = .dietaryCopper

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
    public static let id: Item.Identifier = .dietaryIodine

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
    public static let id: Item.Identifier = .dietaryIron

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
    public static let id: Item.Identifier = .dietaryMagnesium

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
    public static let id: Item.Identifier = .dietaryManganese

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
    public static let id: Item.Identifier = .dietaryMolybdenum

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
    public static let id: Item.Identifier = .dietaryPhosphorus

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
    public static let id: Item.Identifier = .dietaryPotassium

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
    public static let id: Item.Identifier = .dietarySelenium

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
    public static let id: Item.Identifier = .dietarySodium

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
    public static let id: Item.Identifier = .dietaryZinc

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
    public static let id: Item.Identifier = .dietaryWater

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
    public static let id: Item.Identifier = .dietaryCaffeine

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
