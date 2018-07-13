//
//  Mindfulness.swift
//  ASKHealthKit
//
//  Created by sato-shin on 2018/07/13.
//  Copyright © 2018年 com.askendiet. All rights reserved.
//

import Foundation
import HealthKit

public struct MindfulTime: ASKHealthCategoryItem {
    static let identifier: HKCategoryTypeIdentifier = .mindfulSession
    let value: Int = HKCategoryValue.notApplicable.rawValue
    public var start: Date
    public var end: Date
    
    public init(start: Date, end: Date) {
        self.start = start
        self.end = end
    }
    
    init(sample: HKCategorySample) {
        self.start = sample.startDate
        self.end = sample.endDate
    }
}
