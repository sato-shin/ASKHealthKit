//
//  Workout.swift
//  ASKHealthKit
//
//  Created by sato-shin on 2018/07/13.
//  Copyright © 2018年 com.askendiet. All rights reserved.
//

import Foundation
import HealthKit

public struct Workout: ASKHealthItem {
    public let activityType: ActivityType
    public let energyBurned: Double?
    public let start: Date
    public let end: Date
    
    public init(_ activityType: ActivityType, start: Date, end: Date, energyBurned: Double? = nil) {
        self.activityType = activityType
        self.energyBurned = energyBurned
        self.start = start
        self.end = end
    }
    
    public static let hkSampleType: HKSampleType? = HKSampleType.workoutType()
    public static var hkObjectType: HKObjectType? { return Workout.hkSampleType }
    
    public init?(object: HKObject) {
        guard let object = object as? HKWorkout else { return nil }
        self.activityType = .americanFootball(nil)
        self.energyBurned = object.totalEnergyBurned?.doubleValue(for: .kilocalorie())
        self.start = object.startDate
        self.end = object.endDate
    }
    
    public var hkObject: HKObject? {
        let energyBurned: HKQuantity? = {
            if let energyBurned = self.energyBurned {
                return HKQuantity(unit: .kilocalorie(), doubleValue: energyBurned)
            } else {
                return nil
            }
        }()
        let distance: HKQuantity? = {
            if let detail = activityType.detail {
                return HKQuantity(unit: detail.unit.hkUnit, doubleValue: detail.distance)
            } else {
                return nil
            }
        }()
        return HKWorkout(
            activityType: activityType.hkWorkoutActivityType,
            start: start, end: end,
            workoutEvents: nil,
            totalEnergyBurned: energyBurned,
            totalDistance: distance,
            device: nil, metadata: nil)
    }
    
    // activity
    public struct ActivityDetail {
        let distance: Double
        let unit: DistanceUnit
        public init(distance: Double, unit: DistanceUnit) {
            self.distance = distance
            self.unit = unit
        }
    }
    
    public enum ActivityType {
        case americanFootball(ActivityDetail?)
        
        public var detail: (ActivityDetail)? {
            switch self {
            case .americanFootball(let detail):
                return detail
            }
        }
        
        var hkWorkoutActivityType: HKWorkoutActivityType {
            switch self {
            case .americanFootball: return .americanFootball
            }
        }
    }
}
