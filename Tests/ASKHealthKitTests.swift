//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import XCTest
import HealthKit
@testable import ASKHealthKit

class ASKHealthKitTests: XCTestCase {
    
    let quantity = Double(10)
    let now = Date()
    
    let end = Date()
    let start = Date(timeIntervalSinceNow: -(60 * 10))

    func testNutrientItems() {
        let energy = EnergyIntake(value: Int(quantity), unit: .kilocalorie, time: now)
        XCTAssertEqual(energy.time, now)
        XCTAssertEqual(energy.date.start, now)
        XCTAssertEqual(energy.date.end, now)
        XCTAssertEqual(energy.value, Int(quantity))
        XCTAssertEqual(energy.hkSamples.count, 1)
        XCTAssertEqual(energy.hkSamples[0].endDate, now)
    }

//    func testActivityItems() {
//        let step = StepCount(value: Int(quantity), time: now)
//        XCTAssert(step.value == Int(quantity))
//        XCTAssert(step.time == now)
//        XCTAssert(step.start == now)
//        XCTAssert(step.end == now)
//        XCTAssert(step.unitString == "step")
//        XCTAssertNotNil(step.hkObject)
//    }
//
//    func testDistanceItem() {
//        let distanceM = SwimmingDistance(quantity: quantity, time: now, unit: .meter)
//        XCTAssert(distanceM.quantity == quantity)
//        XCTAssert(distanceM.time == now)
//        XCTAssert(distanceM.unitString == "m")
//        XCTAssertNotNil(distanceM.hkObject)
//
//        let distanceYd = SwimmingDistance(quantity: quantity, time: now, unit: .yard)
//        XCTAssert(distanceYd.quantity == quantity)
//        XCTAssert(distanceYd.time == now)
//        XCTAssert(distanceYd.unitString == "yd")
//        XCTAssertNotNil(distanceYd.hkObject)
//
//        let distanceKm = CyclingDistance(quantity: quantity, time: now, unit: .kilometer)
//        XCTAssert(distanceKm.quantity == quantity)
//        XCTAssert(distanceKm.time == now)
//        XCTAssert(distanceKm.unitString == "km")
//        XCTAssertNotNil(distanceKm.hkObject)
//
//        let distanceMi = CyclingDistance(quantity: quantity, time: now, unit: .mile)
//        XCTAssert(distanceMi.quantity == quantity)
//        XCTAssert(distanceMi.time == now)
//        XCTAssert(distanceMi.unitString == "mi")
//        XCTAssertNotNil(distanceMi.hkObject)
//    }
//
//    // Workout
//    func testWorkoutItem() {
//        let workout1Detail: ActivityDetail = ActivityDetail(distance: 1000, unit: .meter)
//        let workout1 = Workout(.americanFootball(workout1Detail), start: start, end: end, energyBurned: quantity)
//        XCTAssert(workout1.start == start)
//        XCTAssert(workout1.end == end)
//        XCTAssert(workout1.energyBurned == quantity)
//        XCTAssertNotNil(workout1.hkObject)
//    }
//
//    func testMindfulTimeItem() {
//        let time = MindfulTime(start: start, end: end)
//        XCTAssert(time.start == start)
//        XCTAssert(time.end == end)
//        XCTAssertNotNil(time.hkObject)
//    }
//
//    func testSleepAnalysisItem() {
//        let time = SleepAnalysis(start: start, end: end, category: .inBed)
//        XCTAssert(time.start == start)
//        XCTAssert(time.end == end)
//        XCTAssert(time.value == HKCategoryValueSleepAnalysis.inBed.rawValue)
//        XCTAssertNotNil(time.hkObject)
//    }
//
//    func testUvIndexItem() {
//        let index = UVExposure(value: 3, start: start, end: end)
//        XCTAssert(index.start == start)
//        XCTAssert(index.end == end)
//        XCTAssert(index.value == 3)
//        XCTAssert(Double(index.value) == index.quantity)
//        XCTAssert(index.unitString == "")
//        XCTAssertNotNil(index.hkObject)
//    }
//
//    @available(iOS 11.0, *)
//    func testInsulinDeliveryItem() {
//        let item = InsulinDelivery(quantity: quantity, start: start, end: end, purpose: .basal)
//        XCTAssert(item.quantity == quantity)
//        XCTAssert(item.start == start)
//        XCTAssert(item.end == end)
//        XCTAssert(item.purpose == .basal)
//        XCTAssert(item.unitString == "IU")
//        XCTAssert(item.hkObject?.metadata?.count == 1)
//    }
//
//    func testIntermenstrualBleedingItem() {
//        let item = IntermenstrualBleeding(time: now)
//        XCTAssert(item.start == now)
//        XCTAssert(item.end == now)
//        XCTAssert(item.time == now)
//        XCTAssert(item.value == HKCategoryValue.notApplicable.rawValue)
//        XCTAssertNotNil(item.hkObject)
//    }
//
//    func testBloodPressureItem() {
//        let diastolic = 100
//        let systolic = 130
//        let item = BloodPressure(diastolic: diastolic, systolic: systolic, time: now)
//        XCTAssert(item.diastolicValue == diastolic)
//        XCTAssert(item.systolicValue == systolic)
//        XCTAssert(item.time == now)
//        XCTAssertNotNil(item.hkObject)
//        XCTAssert(item.diastolic.time == BloodPressureDiastolic(value: diastolic, time: now).time)
//        XCTAssert(item.diastolic.value == BloodPressureDiastolic(value: diastolic, time: now).value)
//        XCTAssert(item.diastolic.unitString == "mmHg")
//        XCTAssert(item.systolic.time == BloodPressureSystolic(value: systolic, time: now).time)
//        XCTAssert(item.systolic.value == BloodPressureSystolic(value: systolic, time: now).value)
//        XCTAssert(item.systolic.unitString == "mmHg")
//    }
}
