//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public struct IntermenstrualBleeding: ASKHealthCategoryItem {
    static let identifier: HKCategoryTypeIdentifier = .intermenstrualBleeding
    let value: Int = HKCategoryValue.notApplicable.rawValue
    var start: Date { return time }
    var end: Date { return time }
    public let time: Date
    
    public init(time: Date) {
        self.time = time
    }
    
    public init(sample: HKCategorySample) {
        self.time = sample.startDate
    }
}
