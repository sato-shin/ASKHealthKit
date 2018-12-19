//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public protocol HealthUnitConvertible {
    var hkUnit: HKUnit { get }
}

public class HealthUnit {
    public enum Weight: HealthUnitConvertible {
        case gram
        case kilogram
        case pound
        case stone
        case once

        public var hkUnit: HKUnit {
            switch self {
            case .gram: return .gram()
            case .kilogram: return .gramUnit(with: .kilo)
            case .pound: return .pound()
            case .stone: return .stone()
            case .once: return .ounce()
            }
        }

        internal var string: String {
            switch self {
            case .gram: return "g"
            case .kilogram: return "kg"
            case .pound: return "lb"
            case .stone: return "st"
            case .once: return "oz"
            }
        }
    }

    public enum Temperature: HealthUnitConvertible {
        case celsius
        case fahrenheit
        case kelvin

        public var hkUnit: HKUnit {
            switch self {
            case .celsius: return .degreeCelsius()
            case .fahrenheit: return .degreeFahrenheit()
            case .kelvin: return .kelvin()
            }
        }
    }

    public enum Count: HealthUnitConvertible {
        case count
        public var hkUnit: HKUnit {
            switch self {
            case .count: return .count()
            }
        }
    }

    public enum Percent: HealthUnitConvertible {
        case percent
        public var hkUnit: HKUnit {
            switch self {
            case .percent: return .percent()
            }
        }
    }

    public enum Time: HealthUnitConvertible {
        case minute
        public var hkUnit: HKUnit {
            switch self {
            case .minute: return .minute()
            }
        }
    }

    public enum Length: HealthUnitConvertible {
        case centimeter
        case meter
        case inch
        case feet

        public var hkUnit: HKUnit {
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

    public enum Distance: HealthUnitConvertible {
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

    public enum VO2Max: HealthUnitConvertible {
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

    public enum BloodGlucose: HealthUnitConvertible {
        case mg_dl
        case mmol_l
        public var hkUnit: HKUnit {
            switch self {
            case .mg_dl: return HKUnit.gramUnit(with: .milli).unitDivided(by: .literUnit(with: .deci))
            case .mmol_l: return HKUnit.moleUnit(with: .milli, molarMass: HKUnitMolarMassBloodGlucose).unitDivided(by: .liter())
            }
        }
    }

    public enum Nutrient: HealthUnitConvertible {
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

    public enum Water: HealthUnitConvertible {
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

    public enum Energy: HealthUnitConvertible {
        case kilocalorie

        public var hkUnit: HKUnit {
            switch self {
            case .kilocalorie: return .kilocalorie()
            }
        }
    }

    public enum BloodPressure: HealthUnitConvertible {
        case millimeterOfMercury

        public var hkUnit: HKUnit {
            switch self {
            case .millimeterOfMercury: return .millimeterOfMercury()
            }
        }
    }
}
