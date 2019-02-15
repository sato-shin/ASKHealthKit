//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import HealthKit

public struct BloodAlcoholContent: QuantityHealthItem {
    public static let id: ItemIdentifier = .bloodAlcoholContent

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.Percent
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .percent
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct BloodGlucose: QuantityHealthItem {
    public static let id: ItemIdentifier = .bloodGlucose

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.BloodGlucose
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .mg_dl
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct ElectrodermalActivity: QuantityHealthItem {
    public static let id: ItemIdentifier = .electrodermalActivity

    public typealias ValueType = Double
    public typealias UnitType = HealthUnit.BloodGlucose
    public typealias TimeType = Date

    public static let defaultUnit: UnitType = .mg_dl
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

public struct UVExposure: QuantityHealthItem {
    public static let id: ItemIdentifier = .uvExposure

    public typealias ValueType = Int
    public typealias UnitType = HealthUnit.Count
    public typealias TimeType = DateInterval

    public static let defaultUnit: UnitType = .count
    public let value: ValueType
    public let unit: UnitType
    public let time: TimeType
    public var metadata: [String: Any]?
    public internal(set) var source: HealthSource

    public init(value: ValueType, unit: UnitType, time: TimeType, metadata: [String: Any]? = nil) {
        self.value = value
        self.unit = unit
        self.time = time
        self.metadata = metadata
        self.source = HealthSource(productBundleId: Bundle.main.bundleIdentifier ?? "")
    }
}

//@available(iOS 11.0, *)
//public struct InsulinDelivery: QuantityHealthItem {
//    public static var id: ItemIdentifier = .insulinDelivery
//
//    public let quantity: Double
//    public let start: Date
//    public let end: Date
//    public let purpose: Purpose
//
//    public init(quantity: Double, start: Date, end: Date, purpose: Purpose) {
//        self.quantity = quantity
//        self.start = start
//        self.end = end
//        self.purpose = purpose
//    }
//
//    public var hkObject: HKObject? {
//        guard let hkType = HKSampleType.quantityType(forIdentifier: InsulinDelivery.identifier) else { return nil }
//
//        let hkQuantity = HKQuantity(unit: hkUnit, doubleValue: quantity)
//        let metadata: [String: Any] = [HKMetadataKeyInsulinDeliveryReason: NSNumber(integerLiteral: purpose.value)]
//        return HKQuantitySample(type: hkType, quantity: hkQuantity, start: start, end: end, device: nil, metadata: metadata)
//    }
//
//    public init?(sample: HKQuantitySample) {
//        guard let purposeValue = sample.metadata?[HKMetadataKeyInsulinDeliveryReason] as? Int,
//            let purpose = Purpose(value: purposeValue) else {
//                return nil
//        }
//        self.quantity = sample.quantity.doubleValue(for: hkUnit)
//        self.start = sample.startDate
//        self.end = sample.endDate
//        self.purpose = purpose
//    }
//
//    public enum Purpose {
//        case basal
//        case bolus
//
//        internal var value: Int {
//            switch self {
//            case .basal: return HKInsulinDeliveryReason.basal.rawValue
//            case .bolus: return HKInsulinDeliveryReason.bolus.rawValue
//            }
//        }
//
//        internal init?(value: Int) {
//            switch value {
//            case HKInsulinDeliveryReason.basal.rawValue: self = .basal
//            case HKInsulinDeliveryReason.bolus.rawValue: self = .bolus
//            default: return nil
//            }
//        }
//    }
//}
