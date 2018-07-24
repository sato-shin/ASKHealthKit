//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import HealthKit

public enum ASKHealthError: Error {
    case notFoundObject

    // wrap case of HKErrors
    case dataUnavailable
    case dataRestricted
    case invalidArgument
    case authorizationDenied
    case authorizationNotDetermined
    case databaseInaccessible
    case userCanceled
    case anotherWorkoutSessionStarted
    case userExitedWorkoutSession
    case noError

    init(from error: Error?) {
        if let error = error as? HKError {
            switch error.errorCode {
            case HKError.noError.rawValue:                           self = .noError
            case HKError.errorHealthDataUnavailable.rawValue:        self = .dataUnavailable
            case HKError.errorHealthDataRestricted.rawValue:         self = .dataRestricted
            case HKError.errorInvalidArgument.rawValue:              self = .invalidArgument
            case HKError.errorAuthorizationDenied.rawValue:          self = .authorizationDenied
            case HKError.errorAuthorizationNotDetermined.rawValue:   self = .authorizationNotDetermined
            case HKError.errorDatabaseInaccessible.rawValue:         self = .databaseInaccessible
            case HKError.errorUserCanceled.rawValue:                 self = .userCanceled
            case HKError.errorAnotherWorkoutSessionStarted.rawValue: self = .anotherWorkoutSessionStarted
            case HKError.errorUserExitedWorkoutSession.rawValue:     self = .userExitedWorkoutSession
            default: self = .noError
            }
        } else {
            self = .noError
        }
    }
}
