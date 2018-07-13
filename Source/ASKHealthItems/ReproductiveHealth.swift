//
//  ReproductiveHealth.swift
//  ASKHealthKit
//
//  Created by sato-shin on 2018/07/13.
//  Copyright © 2018年 com.askendiet. All rights reserved.
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
