//
//  Sleep.swift
//  ASKHealthKit
//
//  Created by sato-shin on 2018/07/13.
//  Copyright © 2018年 com.askendiet. All rights reserved.
//

import Foundation
import HealthKit

public struct SleepAnalysis: ASKHealthCategoryItem {
    static let identifier: HKCategoryTypeIdentifier = .sleepAnalysis
    var value: Int { return category.value }
    public var start: Date
    public var end: Date
    public var category: Category
    
    public init(start: Date, end: Date, category: Category) {
        self.start = start
        self.end = end
        self.category = category
    }
    
    init?(sample: HKCategorySample) {
        guard let category = Category.init(value: sample.value) else { return nil}
        self.start = sample.startDate
        self.end = sample.endDate
        self.category = category
    }
    
    public enum Category {
        case inBed
        case asleep
        case awake
        
        var value: Int {
            switch self {
            case .inBed: return HKCategoryValueSleepAnalysis.inBed.rawValue
            case .asleep: return HKCategoryValueSleepAnalysis.asleep.rawValue
            case .awake: return HKCategoryValueSleepAnalysis.awake.rawValue
            }
        }
        
        init?(value: Int) {
            switch value {
            case HKCategoryValueSleepAnalysis.inBed.rawValue: self = .inBed
            case HKCategoryValueSleepAnalysis.asleep.rawValue: self = .asleep
            case HKCategoryValueSleepAnalysis.awake.rawValue: self = .awake
            default: return nil
            }
        }
    }
}
