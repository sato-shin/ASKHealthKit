//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol MetadataProtocol {
    var metadata: [String: Any]? { get }
}

public class Metadata {
    public enum SexualActivity: MetadataProtocol {
        case used
        case notUsed
        case unspecified

        public var metadata: [String: Any]? {
            switch self {
            case .used: return [HKMetadataKeySexualActivityProtectionUsed: true]
            case .notUsed: return [HKMetadataKeySexualActivityProtectionUsed: false]
            case .unspecified: return nil
            }
        }

        init(_ value: Bool?) {
            if let value = value {
                self = value ? .used : .notUsed
            } else {
                self = .unspecified
            }
        }
    }
}
