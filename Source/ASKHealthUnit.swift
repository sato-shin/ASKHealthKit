//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

internal protocol ASKHealthUnit {
    var hkUnit: HKUnit { get }
    var string: String { get }
}

public enum WeightUnit: ASKHealthUnit {
    case kilogram
    case pound
    case stone
    case once

    internal var hkUnit: HKUnit {
        switch self {
        case .kilogram: return .gramUnit(with: .kilo)
        case .pound: return .pound()
        case .stone: return .stone()
        case .once: return .ounce()
        }
    }

    internal var string: String {
        switch self {
        case .kilogram: return "kg"
        case .pound: return "lb"
        case .stone: return "st"
        case .once: return "oz"
        }
    }
}

public enum CountUnit: HealthUnitConvertible {
    case count
    public var hkUnit: HKUnit {
        switch self {
        case .count: return .count()
        }
    }
}

public enum TimeUnit: HealthUnitConvertible {
    case minute
    public var hkUnit: HKUnit {
        switch self {
        case .minute: return .minute()
        }
    }
}

public enum LengthUnit: ASKHealthUnit {
    case centimeter
    case meter
    case inch
    case feet

    internal var hkUnit: HKUnit {
        switch self {
        case .centimeter: return .meterUnit(with: .centi)
        case .meter: return .meter()
        case .inch: return .inch()
        case .feet: return .foot()
        }
    }

    internal var string: String {
        switch self {
        case .centimeter: return "cm"
        case .meter: return "m"
        case .inch: return "in"
        case .feet: return "ft"
        }
    }
}

public enum DistanceUnit: HealthUnitConvertible {
    case meter
    case kilometer
    case yard
    case mile

    public var hkUnit: HKUnit {
        switch self {
        case .meter: return .meter()
        case .kilometer: return .meterUnit(with: .kilo)
        case .yard: return .yard()
        case .mile: return .mile()
        }
    }

    internal var string: String {
        switch self {
        case .meter: return "m"
        case .kilometer: return "km"
        case .yard: return "yd"
        case .mile: return "mi"
        }
    }
}

public enum VO2MaxUnit: HealthUnitConvertible {
    case ml_KgMin
    public var hkUnit: HKUnit {
        switch self {
        case .ml_KgMin:
            let denom = HKUnit.gramUnit(with: .kilo).unitMultiplied(by: .minute())
            let numer = HKUnit.literUnit(with: .milli)
            return numer.unitDivided(by: denom)
        }
    }
}

public enum NutrientUnit: HealthUnitConvertible {
    case g
    case mg
    case mcg

    public var hkUnit: HKUnit {
        switch self {
        case .g: return .gramUnit(with: .none)
        case .mg: return .gramUnit(with: .milli)
        case .mcg: return .gramUnit(with: .micro)
        }
    }

    internal var string: String {
        switch self {
        case .g: return "g"
        case .mg: return "mg"
        case .mcg: return "mcg"
        }
    }
}

public enum WaterUnit: HealthUnitConvertible {
    case litter
    case milliLitter
    case imperialCup
    case imperialOnce
    case imperialPint
    case usCup
    case usOnce
    case usPint

    public var hkUnit: HKUnit {
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

public enum EnergyUnit: HealthUnitConvertible {
    case kilocalorie

    public var hkUnit: HKUnit {
        switch self {
        case .kilocalorie: return .kilocalorie()
        }
    }
}

public enum BloodPressureUnit: HealthUnitConvertible {
    case millimeterOfMercury

    public var hkUnit: HKUnit {
        switch self {
        case .millimeterOfMercury: return .millimeterOfMercury()
        }
    }
}

public protocol HealthUnitConvertible {
    var hkUnit: HKUnit { get }
}
