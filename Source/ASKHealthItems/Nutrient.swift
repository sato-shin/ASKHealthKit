//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public struct EnergyIntake: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryEnergyConsumed

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Energy
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .kilocalorie
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Protein: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryProtein

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Carbohydrate: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryCarbohydrates

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Fiber: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryFiber

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Sugar: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietarySugar

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Cholesterol: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryCholesterol

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct MonounsaturatedFat: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryFatMonounsaturated

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct PolyunsaturatedFat: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryFatPolyunsaturated

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct SaturatedFat: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryFatSaturated

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct TotalFat: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryFatTotal

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .g
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Biotin: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryBiotin

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Folate: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryFolate

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Niacin: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryNiacin

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct PantothenicAcid: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryPantothenicAcid

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Thiamin: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryThiamin

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct VitaminA: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryVitaminA

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Riboflavin: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryRiboflavin

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct VitaminB6: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryVitaminB6

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct VitaminB12: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryVitaminB12

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct VitaminC: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryVitaminC

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct VitaminD: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryVitaminD

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct VitaminE: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryVitaminE

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct VitaminK: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryVitaminK

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Calcium: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryCalcium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Chloride: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryChloride

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Chromium: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryChromium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Copper: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryCopper

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Iodine: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryIodine

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Iron: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryIron

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Magnesium: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryMagnesium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Manganese: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryManganese

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Molybdenum: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryMolybdenum

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Phosphorus: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryPhosphorus

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Potassium: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryPotassium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Selenium: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietarySelenium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mcg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Sodium: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietarySodium

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Zinc: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryZinc

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Water: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryWater

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Water
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .milliLitter
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct Caffeine: QuantityHealthSample {
    public static let id: ItemIdentifier = .dietaryCaffeine

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Nutrient
    public typealias TimeType = Date

    public static var defaultUnit: UnitType = .mg
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}
