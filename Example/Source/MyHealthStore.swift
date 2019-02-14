// 
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import ASKHealthKit

class MyHealthStore: ASKHealthStore {
    let energyStore = HealthItemStore<EnergyIntake>(sharing: .rw)
    let proteinStore = HealthItemStore<Protein>(sharing: .rw)
    let intermenstrualBleedingStore = HealthItemStore<IntermenstrualBleeding>(sharing: .rw)
    let sleepAnalysis = HealthItemStore<SleepAnalysis>(sharing: .rw)
    let mindfulTime = HealthItemStore<MindfulTime>(sharing: .rw)
//    let bloodPressure = HealthItemStore<BloodPressure>(sharing: .rw)
    let exerciseMinute = HealthItemStore<ExerciseMinute>(sharing: .r)
    let wheelchairPushCount = HealthItemStore<WheelchairPushCount>(sharing: .rw)
    let vo2max = HealthItemStore<VO2Max>(sharing: .rw)
    let appleStandHour = HealthItemStore<AppleStandHour>(sharing: .r)
    let sexualActivity = HealthItemStore<SexualActivity>(sharing: .rw)
    let bloodAlcoholContent = HealthItemStore<BloodAlcoholContent>(sharing: .rw)
    let bloodGlucose = HealthItemStore<BloodGlucose>(sharing: .rw)
    
    let step = HealthItemStore<StepCount>(sharing: .rw)
}
