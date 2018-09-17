// 
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import ASKHealthKit

class HealthStore: ASKHealthStore {
    let energyStore = ItemStore<Energy>(sharing: .r)
}
