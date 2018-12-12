// 
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import ASKHealthKit

class HealthStore: ASKHealthStore {
    let energyStore = HealthItemStore<EnergyConsumed>(sharing: .rw)
    let intermenstrualBleedingStore = HealthItemStore<IntermenstrualBleeding>(sharing: .rw)
    let sleepAnalysis = HealthItemStore<SleepAnalysis>(sharing: .rw)
    let mindfulTime = HealthItemStore<MindfulTime>(sharing: .rw)
    let bloodPressure = HealthItemStore<BloodPressure>(sharing: .rw)
}
