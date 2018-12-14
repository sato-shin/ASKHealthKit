//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

class Metadata {
    struct SexualActivity {
        var value: Bool
        var metadata: [String: Bool] {
            return [HKMetadataKeySexualActivityProtectionUsed: value]
        }
    }
}
