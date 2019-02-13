//
// Copyright (c) 2019 Asken Inc. All rights reserved.
//

import HealthKit

public struct ItemIdentifier: Equatable {
    internal let rawValue: Any

    private init(_ id: HKQuantityTypeIdentifier) {
        self.rawValue = id
    }
    private init(_ id: HKCharacteristicTypeIdentifier) {
        self.rawValue = id
    }
    private init(_ id: HKCategoryTypeIdentifier) {
        self.rawValue = id
    }
    private init(_ id: HKCorrelationTypeIdentifier) {
        self.rawValue = id
    }

    public static func ==(lhs: ItemIdentifier, rhs: ItemIdentifier) -> Bool {
        if let lid = lhs.rawValue as? HKQuantityTypeIdentifier, let rid = rhs.rawValue as? HKQuantityTypeIdentifier {
            return lid == rid
        }
        if let lid = lhs.rawValue as? HKCharacteristicTypeIdentifier, let rid = rhs.rawValue as? HKCharacteristicTypeIdentifier {
            return lid == rid
        }
        if let lid = lhs.rawValue as? HKCategoryTypeIdentifier, let rid = rhs.rawValue as? HKCategoryTypeIdentifier {
            return lid == rid
        }
        if let lid = lhs.rawValue as? HKCorrelationTypeIdentifier, let rid = rhs.rawValue as? HKCorrelationTypeIdentifier {
            return lid == rid
        }
        return false
    }

    internal var writableAuthorizationTypes: Set<HKSampleType> {
        if let type = rawValue as? HKQuantityTypeIdentifier {
            return [HKSampleType.quantityType(forIdentifier: type)!]
        }
        if let type = rawValue as? HKCategoryTypeIdentifier {
            return [HKSampleType.categoryType(forIdentifier: type)!]
        }
        if let type = rawValue as? HKCorrelationTypeIdentifier { // todo: クラッシュする
            return [HKSampleType.correlationType(forIdentifier: type)!]
        }
        return []
    }

    internal var readableAuthorizationTypes: Set<HKObjectType> {
        if let type = rawValue as? HKQuantityTypeIdentifier {
            return [HKObjectType.quantityType(forIdentifier: type)!]
        }
        if let type = rawValue as? HKCategoryTypeIdentifier {
            return [HKObjectType.categoryType(forIdentifier: type)!]
        }
        if let type = rawValue as? HKCorrelationTypeIdentifier { // todo: クラッシュする
            return [HKObjectType.correlationType(forIdentifier: type)!]
        }
        if let type = rawValue as? HKCharacteristicTypeIdentifier {
            return [HKObjectType.characteristicType(forIdentifier: type)!]
        }
        return []
    }
}

extension ItemIdentifier {
    public static let dietaryEnergyConsumed = ItemIdentifier(.dietaryEnergyConsumed)
    public static let dietaryProtein = ItemIdentifier(.dietaryProtein)
    public static let dietaryCarbohydrates = ItemIdentifier(.dietaryCarbohydrates)
    public static let dietaryFiber = ItemIdentifier(.dietaryFiber)
    public static let dietarySugar = ItemIdentifier(.dietarySugar)
    public static let dietaryCholesterol = ItemIdentifier(.dietaryCholesterol)
    public static let dietaryFatMonounsaturated = ItemIdentifier(.dietaryFatMonounsaturated)
    public static let dietaryFatPolyunsaturated = ItemIdentifier(.dietaryFatPolyunsaturated)
    public static let dietaryFatSaturated = ItemIdentifier(.dietaryFatSaturated)
    public static let dietaryFatTotal = ItemIdentifier(.dietaryFatTotal)
    public static let dietaryBiotin = ItemIdentifier(.dietaryBiotin)
    public static let dietaryFolate = ItemIdentifier(.dietaryFolate)
    public static let dietaryNiacin = ItemIdentifier(.dietaryNiacin)
    public static let dietaryPantothenicAcid = ItemIdentifier(.dietaryPantothenicAcid)
    public static let dietaryThiamin = ItemIdentifier(.dietaryThiamin)
    public static let dietaryVitaminA = ItemIdentifier(.dietaryVitaminA)
    public static let dietaryRiboflavin = ItemIdentifier(.dietaryRiboflavin)
    public static let dietaryVitaminB6 = ItemIdentifier(.dietaryVitaminB6)
    public static let dietaryVitaminB12 = ItemIdentifier(.dietaryVitaminB12)
    public static let dietaryVitaminC = ItemIdentifier(.dietaryVitaminC)
    public static let dietaryVitaminD = ItemIdentifier(.dietaryVitaminD)
    public static let dietaryVitaminE = ItemIdentifier(.dietaryVitaminE)
    public static let dietaryVitaminK = ItemIdentifier(.dietaryVitaminK)
    public static let dietaryCalcium = ItemIdentifier(.dietaryCalcium)
    public static let dietaryChloride = ItemIdentifier(.dietaryChloride)
    public static let dietaryChromium = ItemIdentifier(.dietaryChromium)
    public static let dietaryCopper = ItemIdentifier(.dietaryCopper)
    public static let dietaryIodine = ItemIdentifier(.dietaryIodine)
    public static let dietaryIron = ItemIdentifier(.dietaryIron)
    public static let dietaryMagnesium = ItemIdentifier(.dietaryMagnesium)
    public static let dietaryManganese = ItemIdentifier(.dietaryManganese)
    public static let dietaryMolybdenum = ItemIdentifier(.dietaryMolybdenum)
    public static let dietaryPhosphorus = ItemIdentifier(.dietaryPhosphorus)
    public static let dietaryPotassium = ItemIdentifier(.dietaryPotassium)
    public static let dietarySelenium = ItemIdentifier(.dietarySelenium)
    public static let dietarySodium = ItemIdentifier(.dietarySodium)
    public static let dietaryZinc = ItemIdentifier(.dietaryZinc)
    public static let dietaryWater = ItemIdentifier(.dietaryWater)
    public static let dietaryCaffeine = ItemIdentifier(.dietaryCaffeine)

    public static let activeEnergyBurned = ItemIdentifier(.activeEnergyBurned)
    public static let appleExerciseTime = ItemIdentifier(.appleExerciseTime)
    public static let basalEnergyBurned = ItemIdentifier(.basalEnergyBurned)
    public static let distanceCycling = ItemIdentifier(.distanceCycling)
    @available(iOS 11.2, *) public static let distanceDownhillSnowSports = ItemIdentifier(.distanceDownhillSnowSports)
    public static let distanceSwimming = ItemIdentifier(.distanceSwimming)
    public static let distanceWalkingRunning = ItemIdentifier(.distanceWalkingRunning)
    public static let distanceWheelchair = ItemIdentifier(.distanceWheelchair)
    public static let flightsClimbed = ItemIdentifier(.flightsClimbed)
    public static let nikeFuel = ItemIdentifier(.nikeFuel)
    public static let pushCount = ItemIdentifier(.pushCount)
    public static let stepCount = ItemIdentifier(.stepCount)
    public static let swimmingStrokeCount = ItemIdentifier(.swimmingStrokeCount)
    @available(iOS 11.0, *) public static let vo2Max = ItemIdentifier(.vo2Max)
    public static let appleStandHour = ItemIdentifier(.appleStandHour)

    public static let mindfulSession = ItemIdentifier(.mindfulSession)

    public static let sleepAnalysis = ItemIdentifier(.sleepAnalysis)

    public static let bodyFatPercentage = ItemIdentifier(.bodyFatPercentage)
    public static let bodyMass = ItemIdentifier(.bodyMass)
    public static let bodyMassIndex = ItemIdentifier(.bodyMassIndex)
    public static let leanBodyMass = ItemIdentifier(.leanBodyMass)
    public static let height = ItemIdentifier(.height)
    @available(iOS 11.0, *) public static let waistCircumference = ItemIdentifier(.waistCircumference)

    public static let basalBodyTemperature = ItemIdentifier(.basalBodyTemperature)
    public static let cervicalMucusQuality = ItemIdentifier(.cervicalMucusQuality)
    public static let menstrualFlow = ItemIdentifier(.menstrualFlow)
    public static let ovulationTestResult = ItemIdentifier(.ovulationTestResult)
    public static let sexualActivity = ItemIdentifier(.sexualActivity)
    public static let intermenstrualBleeding = ItemIdentifier(.intermenstrualBleeding)

    public static let bloodPressure = ItemIdentifier(.bloodPressure)
    public static let bloodPressureSystolic = ItemIdentifier(.bloodPressureSystolic)
    public static let bloodPressureDiastolic = ItemIdentifier(.bloodPressureDiastolic)
    public static let heartRate = ItemIdentifier(.heartRate)
    @available(iOS 11.0, *) public static let heartRateVariabilitySDNN = ItemIdentifier(.heartRateVariabilitySDNN)
    @available(iOS 11.0, *) public static let restingHeartRate = ItemIdentifier(.restingHeartRate)
    @available(iOS 11.0, *) public static let walkingHeartRateAverage = ItemIdentifier(.walkingHeartRateAverage)

    public static let bloodAlcoholContent = ItemIdentifier(.bloodAlcoholContent)
    public static let bloodGlucose = ItemIdentifier(.bloodGlucose)
    public static let electrodermalActivity = ItemIdentifier(.electrodermalActivity)
    public static let forcedExpiratoryVolume1 = ItemIdentifier(.forcedExpiratoryVolume1)
    public static let forcedVitalCapacity = ItemIdentifier(.forcedVitalCapacity)
    public static let inhalerUsage = ItemIdentifier(.inhalerUsage)
    @available(iOS 11.0, *) public static let insulinDelivery = ItemIdentifier(.insulinDelivery)
    public static let numberOfTimesFallen = ItemIdentifier(.numberOfTimesFallen)
    public static let oxygenSaturation = ItemIdentifier(.oxygenSaturation)
    public static let peakExpiratoryFlowRate = ItemIdentifier(.peakExpiratoryFlowRate)
    public static let peripheralPerfusionIndex = ItemIdentifier(.peripheralPerfusionIndex)
    public static let uvExposure = ItemIdentifier(.uvExposure)

    public static let bodyTemperature = ItemIdentifier(.bodyTemperature)
    public static let respiratoryRate = ItemIdentifier(.respiratoryRate)
}
