//
//  Activity.swift
//  ASKHealthKit
//
//  Created by sato-shin on 2018/07/13.
//  Copyright © 2018年 com.askendiet. All rights reserved.
//

import Foundation
import HealthKit

public struct StepCount: ASKHealthQuantityItem {
    static let identifier: HKQuantityTypeIdentifier = .stepCount
    let hkUnit: HKUnit = .count()
    public let quantity: Double
    public let time: Date
    var start: Date { return time }
    var end: Date { return time }
    
    public init(quantity: Double, time: Date) {
        self.quantity = quantity
        self.time = time
    }
    
    public var unitString: String {
        if quantity == 1 { return "step" }
        else { return "steps" }
    }
    
    public init?(sample: HKQuantitySample) {
        self.quantity = sample.quantity.doubleValue(for: hkUnit)
        self.time = sample.startDate
    }
}

public struct SwimmingDistance: ASKHealthQuantityItem {
    static let identifier: HKQuantityTypeIdentifier = .distanceSwimming
    var hkUnit: HKUnit { return unit.hkUnit }
    public let quantity: Double
    public let time: Date
    var start: Date { return time }
    var end: Date { return time }
    public let unit: DistanceUnit
    
    public init(quantity: Double, time: Date, unit: DistanceUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }
    
    public init?(sample: HKQuantitySample) {
        self.unit = .meter
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit) // TODO: 単位指定できるように
        self.time = sample.startDate
    }
}

public struct CyclingDistance: ASKHealthQuantityItem {
    static let identifier: HKQuantityTypeIdentifier = .distanceCycling
    var hkUnit: HKUnit { return unit.hkUnit }
    public let quantity: Double
    public let time: Date
    var start: Date { return time }
    var end: Date { return time }
    public let unit: DistanceUnit
    
    public init(quantity: Double, time: Date, unit: DistanceUnit) {
        self.quantity = quantity
        self.time = time
        self.unit = unit
    }
    
    public init?(sample: HKQuantitySample) {
        self.unit = .meter
        self.quantity = sample.quantity.doubleValue(for: unit.hkUnit) // TODO: 単位指定できるように
        self.time = sample.startDate
    }
}

public enum DistanceUnit {
    case meter
    case kilometer
    case yard
    case mile
    
    var hkUnit: HKUnit {
        switch self {
        case .meter: return .meter()
        case .kilometer: return .meterUnit(with: .kilo)
        case .yard: return .yard()
        case .mile: return .mile()
        }
    }
}
