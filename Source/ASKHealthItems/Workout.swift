//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit
//
//public struct Workout {
//    public let activityType: ActivityType
//    public let energyBurned: Double?
//    public let start: Date
//    public let end: Date
//
//    public init(_ activityType: ActivityType, start: Date, end: Date, energyBurned: Double? = nil) {
//        self.activityType = activityType
//        self.energyBurned = energyBurned
//        self.start = start
//        self.end = end
//    }
//
//    public static let hkSampleType: HKSampleType? = HKSampleType.workoutType()
//    public static var hkObjectType: HKObjectType? { return Workout.hkSampleType }
//    public static let hkSampleTypes: [HKSampleType] = [HKSampleType.workoutType()]
//    public static var hkObjectTypes: [HKObjectType] { return Workout.hkSampleTypes }
//
//    public init?(object: HKObject) {
//        guard let object = object as? HKWorkout else { return nil }
//        let distance: ActivityDetail? = {
//            if let distance = object.totalDistance {
//                return ActivityDetail(distance: distance.doubleValue(for: ActivityDetail.defaultUnit.hkUnit))
//            } else {
//                return nil
//            }
//        }()
//        self.activityType = ActivityType.init(type: object.workoutActivityType, detail: distance)
//        self.energyBurned = object.totalEnergyBurned?.doubleValue(for: .kilocalorie())
//        self.start = object.startDate
//        self.end = object.endDate
//    }
//
//    public var hkObject: HKObject? {
//        let energyBurned: HKQuantity? = {
//            if let energyBurned = self.energyBurned {
//                return HKQuantity(unit: .kilocalorie(), doubleValue: energyBurned)
//            } else {
//                return nil
//            }
//        }()
//        let distance: HKQuantity? = {
//            if let detail = activityType.detail {
//                return HKQuantity(unit: detail.unit.hkUnit, doubleValue: detail.distance)
//            } else {
//                return nil
//            }
//        }()
//        return HKWorkout(
//            activityType: activityType.hkWorkoutActivityType,
//            start: start, end: end,
//            workoutEvents: nil,
//            totalEnergyBurned: energyBurned,
//            totalDistance: distance,
//            device: nil, metadata: nil)
//    }
//}
//
//public enum ActivityType {
//    case americanFootball(ActivityDetail?)
//    case archery
//    case mindAndBody
//    case snowSports
//
//    internal init(type: HKWorkoutActivityType, detail: ActivityDetail?) {
//        switch type {
//        case .americanFootball: self = .americanFootball(detail)
//        case .archery: self = .archery
//        case .mindAndBody: self = .mindAndBody
//        case .snowSports: self = .snowSports
//        default: fatalError("あとで実装する")
//        }
//    }
//
//    public var detail: (ActivityDetail)? {
//        switch self {
//        case .americanFootball(let detail):
//            return detail
//        case .archery,
//             .mindAndBody,
//             .snowSports:
//            return nil
//        }
//    }
//
//    var hkWorkoutActivityType: HKWorkoutActivityType {
//        switch self {
//        case .americanFootball: return .americanFootball
//        case .archery: return .archery
//        case .mindAndBody: return .mindAndBody
//        case .snowSports: return .snowSports
//        }
//    }
//}
//
//public struct ActivityDetail: Equatable {
//    public static var defaultUnit: DistanceUnit = .kilometer
//    public let distance: Double
//    public let unit: DistanceUnit
//    public init(distance: Double, unit: DistanceUnit = ActivityDetail.defaultUnit) {
//        self.distance = distance
//        self.unit = unit
//    }
//
//    public static func ==(lhs: ActivityDetail, rhs: ActivityDetail) -> Bool {
//        return (lhs.distance == rhs.distance) && (lhs.unit == rhs.unit)
//    }
//}
