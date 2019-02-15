//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public protocol HealthItem {
    static var id: ItemIdentifier { get }
}

public struct HealthSource {
    var productBundleId: String
}
