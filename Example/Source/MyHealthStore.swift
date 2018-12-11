// 
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import ASKHealthKit

class HealthStore: ASKHealthStore {
    let energyStore = ItemStore<EnergyConsumed>(sharing: .rw)
    let intermenstrualBleedingStore = ItemStore<IntermenstrualBleeding>(sharing: .rw)
    let sleepAnalysis = ItemStore<SleepAnalysis>(sharing: .rw)
    let mindfulTime = ItemStore<MindfulTime>(sharing: .rw)
    let bloodPressure = ItemStore<BloodPressure>(sharing: .rw)
}
