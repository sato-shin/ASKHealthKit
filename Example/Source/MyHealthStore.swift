// 
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import ASKHealthKit

class MyHealthStore: ASKHealthStore {
    let energyStore = HealthItemStore<Energy>(sharing: .rw)
    let proteinStore = HealthItemStore<Protein>(sharing: .rw)
    let carbohydrateStore = HealthItemStore<Carbohydrates>(sharing: .rw)
    let dietaryFiberStore = HealthItemStore<DietaryFiber>(sharing: .rw)
    let sugarStore = HealthItemStore<Sugar>(sharing: .rw)
    let totalFatStore = HealthItemStore<TotalFat>(sharing: .rw)
    let saturatedFatStore = HealthItemStore<SaturatedFat>(sharing: .rw)
    let monounsaturatedFatStore = HealthItemStore<MonounsaturatedFat>(sharing: .rw)
    let polyunsaturatedFatStore = HealthItemStore<PolyunsaturatedFat>(sharing: .rw)
    let cholesterolStore = HealthItemStore<Cholesterol>(sharing: .rw)
    let biotinStore = HealthItemStore<Biotin>(sharing: .rw)
    let folateStore = HealthItemStore<Folate>(sharing: .rw)
    let niacinStore = HealthItemStore<Niacin>(sharing: .rw)
    let pantothenicAcidStore = HealthItemStore<PantothenicAcid>(sharing: .rw)
    let riboflavinStore = HealthItemStore<Riboflavin>(sharing: .rw)
    let thiaminStore = HealthItemStore<Thiamin>(sharing: .rw)
    let vitaminAStore = HealthItemStore<VitaminA>(sharing: .rw)
    let vitaminB6Store = HealthItemStore<VitaminB6>(sharing: .rw)
    let vitaminB12Store = HealthItemStore<VitaminB12>(sharing: .rw)
    let vitaminCStore = HealthItemStore<VitaminC>(sharing: .rw)
    let vitaminDStore = HealthItemStore<VitaminD>(sharing: .rw)
    let vitaminEStore = HealthItemStore<VitaminE>(sharing: .rw)
    let vitaminKStore = HealthItemStore<VitaminK>(sharing: .rw)
    let calciumStore = HealthItemStore<Calcium>(sharing: .rw)
    let chlorideStore = HealthItemStore<Chloride>(sharing: .rw)
    let chromiumStore = HealthItemStore<Chromium>(sharing: .rw)
    let copperStore = HealthItemStore<Copper>(sharing: .rw)
    let iodineStore = HealthItemStore<Iodine>(sharing: .rw)
    let ironStore = HealthItemStore<Iron>(sharing: .rw)
    let magnesiumStore = HealthItemStore<Magnesium>(sharing: .rw)
    let manganeseStore = HealthItemStore<Manganese>(sharing: .rw)
    let molybdenumStore = HealthItemStore<Molybdenum>(sharing: .rw)
    let phosphorusStore = HealthItemStore<Phosphorus>(sharing: .rw)
    let potassiumStore = HealthItemStore<Potassium>(sharing: .rw)
    let seleniumStore = HealthItemStore<Selenium>(sharing: .rw)
    let sodiumStore = HealthItemStore<Sodium>(sharing: .rw)
    let zincStore = HealthItemStore<Zinc>(sharing: .rw)
    let caffeineStore = HealthItemStore<Caffeine>(sharing: .rw)
    let waterStore = HealthItemStore<Water>(sharing: .rw)

    let stepCountStore = HealthItemStore<StepCount>(sharing: .rw)
    let swimmingDistanceStore = HealthItemStore<SwimmingDistance>(sharing: .rw)
    let cyclingDistanceStore = HealthItemStore<CyclingDistance>(sharing: .rw)
    let workoutStore = HealthItemStore<Workout>(sharing: .rw)

    let uvExposureStore = HealthItemStore<UVExposure>(sharing: .rw)
    let insulinDeliveryStore = HealthItemStore<InsulinDelivery>(sharing: .rw)

    let intermenstrualBleedingStore = HealthItemStore<IntermenstrualBleeding>(sharing: .rw)

    let bloodPressure = HealthItemStore<BloodPressure>(sharing: .rw)

    let mindfulTimeStore = HealthItemStore<MindfulTime>(sharing: .rw)

    let sleepAnalysisStore = HealthItemStore<SleepAnalysis>(sharing: .rw)
}
