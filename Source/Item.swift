//
// Copyright (c) 2019 Asken Inc. All rights reserved.
//

import HealthKit

public struct Item {
    public var id: Item.Identifier

    public init(id: Item.Identifier) {
        self.id = id
    }

    public struct Identifier: Equatable {
        let id: Any

        init(_ id: HKQuantityTypeIdentifier) {
            self.id = id
        }
        init(_ id: HKCharacteristicTypeIdentifier) {
            self.id = id
        }
        init(_ id: HKCorrelationTypeIdentifier) {
            self.id = id
        }
        init(_ id: HKCategoryTypeIdentifier) {
            self.id = id
        }

        public static func ==(lhs: Item.Identifier, rhs: Item.Identifier) -> Bool {
            if let lid = lhs.id as? HKQuantityTypeIdentifier, let rid = rhs.id as? HKQuantityTypeIdentifier {
                return lid == rid
            }
            return false
        }
    }

    var writableAuthorizationTypes: Set<HKSampleType> {
        if let type = id.id as? HKQuantityTypeIdentifier {
            return [HKQuantityType.quantityType(forIdentifier: type)!]
        }
        return []
    }
}
extension Item.Identifier {
    static let dietaryEnergyConsumed = Item.Identifier(.dietaryEnergyConsumed)
    static let dietaryProtein = Item.Identifier(.dietaryProtein)
    static let dietaryCarbohydrates = Item.Identifier(.dietaryCarbohydrates)
    static let dietaryFiber = Item.Identifier(.dietaryFiber)
    static let dietarySugar = Item.Identifier(.dietarySugar)
    static let dietaryCholesterol = Item.Identifier(.dietaryCholesterol)
    static let dietaryFatMonounsaturated = Item.Identifier(.dietaryFatMonounsaturated)
    static let dietaryFatPolyunsaturated = Item.Identifier(.dietaryFatPolyunsaturated)
    static let dietaryFatSaturated = Item.Identifier(.dietaryFatSaturated)
    static let dietaryFatTotal = Item.Identifier(.dietaryFatTotal)
    static let dietaryBiotin = Item.Identifier(.dietaryBiotin)
    static let dietaryFolate = Item.Identifier(.dietaryFolate)
    static let dietaryNiacin = Item.Identifier(.dietaryNiacin)
    static let dietaryPantothenicAcid = Item.Identifier(.dietaryPantothenicAcid)
    static let dietaryThiamin = Item.Identifier(.dietaryThiamin)
    static let dietaryVitaminA = Item.Identifier(.dietaryVitaminA)
    static let dietaryRiboflavin = Item.Identifier(.dietaryRiboflavin)
    static let dietaryVitaminB6 = Item.Identifier(.dietaryVitaminB6)
    static let dietaryVitaminB12 = Item.Identifier(.dietaryVitaminB12)
    static let dietaryVitaminC = Item.Identifier(.dietaryVitaminC)
    static let dietaryVitaminD = Item.Identifier(.dietaryVitaminD)
    static let dietaryVitaminE = Item.Identifier(.dietaryVitaminE)
    static let dietaryVitaminK = Item.Identifier(.dietaryVitaminK)
    static let dietaryCalcium = Item.Identifier(.dietaryCalcium)
    static let dietaryChloride = Item.Identifier(.dietaryChloride)
    static let dietaryChromium = Item.Identifier(.dietaryChromium)
    static let dietaryCopper = Item.Identifier(.dietaryCopper)
    static let dietaryIodine = Item.Identifier(.dietaryIodine)
    static let dietaryIron = Item.Identifier(.dietaryIron)
    static let dietaryMagnesium = Item.Identifier(.dietaryMagnesium)
    static let dietaryManganese = Item.Identifier(.dietaryManganese)
    static let dietaryMolybdenum = Item.Identifier(.dietaryMolybdenum)
    static let dietaryPhosphorus = Item.Identifier(.dietaryPhosphorus)
    static let dietaryPotassium = Item.Identifier(.dietaryPotassium)
    static let dietarySelenium = Item.Identifier(.dietarySelenium)
    static let dietarySodium = Item.Identifier(.dietarySodium)
    static let dietaryZinc = Item.Identifier(.dietaryZinc)
    static let dietaryWater = Item.Identifier(.dietaryWater)
    static let dietaryCaffeine = Item.Identifier(.dietaryCaffeine)

    static let activeEnergyBurned = Item.Identifier(.activeEnergyBurned)
    static let appleExerciseTime = Item.Identifier(.appleExerciseTime)
    static let basalEnergyBurned = Item.Identifier(.basalEnergyBurned)
    static let distanceCycling = Item.Identifier(.distanceCycling)
    @available(iOS 11.2, *) static let distanceDownhillSnowSports = Item.Identifier(.distanceDownhillSnowSports)
    static let distanceSwimming = Item.Identifier(.distanceSwimming)
    static let distanceWalkingRunning = Item.Identifier(.distanceWalkingRunning)
    static let distanceWheelchair = Item.Identifier(.distanceWheelchair)
    static let flightsClimbed = Item.Identifier(.flightsClimbed)
    static let nikeFuel = Item.Identifier(.nikeFuel)
    static let pushCount = Item.Identifier(.pushCount)
    static let stepCount = Item.Identifier(.stepCount)
    static let swimmingStrokeCount = Item.Identifier(.swimmingStrokeCount)
    @available(iOS 11.2, *) static let vo2Max = Item.Identifier(.vo2Max)
    static let appleStandHour = Item.Identifier(.appleStandHour)

    static let mindfulSession = Item.Identifier(.mindfulSession)

    static let sleepAnalysis = Item.Identifier(.sleepAnalysis)

    static let bodyFatPercentage = Item.Identifier(.bodyFatPercentage)
    static let bodyMass = Item.Identifier(.bodyMass)
    static let bodyMassIndex = Item.Identifier(.bodyMassIndex)
    static let leanBodyMass = Item.Identifier(.leanBodyMass)
    static let height = Item.Identifier(.height)
    @available(iOS 11.0, *) static let waistCircumference = Item.Identifier(.waistCircumference)

    static let basalBodyTemperature = Item.Identifier(.basalBodyTemperature)
    static let cervicalMucusQuality = Item.Identifier(.cervicalMucusQuality)
    static let menstrualFlow = Item.Identifier(.menstrualFlow)
    static let ovulationTestResult = Item.Identifier(.ovulationTestResult)
    static let sexualActivity = Item.Identifier(.sexualActivity)
    static let intermenstrualBleeding = Item.Identifier(.intermenstrualBleeding)

    static let bloodPressure = Item.Identifier(.bloodPressure)
    static let bloodPressureSystolic = Item.Identifier(.bloodPressureSystolic)
    static let bloodPressureDiastolic = Item.Identifier(.bloodPressureDiastolic)
    static let heartRate = Item.Identifier(.heartRate)
    @available(iOS 11.0, *) static let heartRateVariabilitySDNN = Item.Identifier(.heartRateVariabilitySDNN)
    @available(iOS 11.0, *) static let restingHeartRate = Item.Identifier(.restingHeartRate)
    @available(iOS 11.0, *) static let walkingHeartRateAverage = Item.Identifier(.walkingHeartRateAverage)

    static let bloodAlcoholContent = Item.Identifier(.bloodAlcoholContent)
    static let bloodGlucose = Item.Identifier(.bloodGlucose)
    static let electrodermalActivity = Item.Identifier(.electrodermalActivity)
    static let forcedExpiratoryVolume1 = Item.Identifier(.forcedExpiratoryVolume1)
    static let forcedVitalCapacity = Item.Identifier(.forcedVitalCapacity)
    static let inhalerUsage = Item.Identifier(.inhalerUsage)
    @available(iOS 11.0, *) static let insulinDelivery = Item.Identifier(.insulinDelivery)
    static let numberOfTimesFallen = Item.Identifier(.numberOfTimesFallen)
    static let oxygenSaturation = Item.Identifier(.oxygenSaturation)
    static let peakExpiratoryFlowRate = Item.Identifier(.peakExpiratoryFlowRate)
    static let peripheralPerfusionIndex = Item.Identifier(.peripheralPerfusionIndex)
    static let uvExposure = Item.Identifier(.uvExposure)

    static let bodyTemperature = Item.Identifier(.bodyTemperature)
    static let respiratoryRate = Item.Identifier(.respiratoryRate)
}
