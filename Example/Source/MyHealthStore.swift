// 
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import ASKHealthKit

class MyHealthStore: ASKHealthStore {
    let energyStore = HealthItemStore<Energy>(sharing: .rw)
    let carbohydrateStore = HealthItemStore<Carbohydrate>(sharing: .rw)
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
