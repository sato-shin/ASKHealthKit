//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import XCTest
import ASKHealthKit
@testable import Example

class HealthItemTests: XCTestCase {
    
    let quantity = Double(10)
    let now = Date()
    
    let end = Date()
    let start = Date(timeIntervalSinceNow: -(60 * 10))
    
    func testNutrientItems() {
        let energy = Energy(quantity: quantity, time: now)
        XCTAssert(energy.quantity == quantity)
        XCTAssert(energy.time == now)
        XCTAssert(energy.unitString == "kcal")
        
        let carbohydrate = Carbohydrates(quantity: quantity, time: now)
        XCTAssert(carbohydrate.quantity == quantity)
        XCTAssert(carbohydrate.time == now)
        XCTAssert(carbohydrate.unitString == "g")
    }
    
    func testWaterItem() {
        let waterL = Water(quantity: quantity, time: now, unit: .litter)
        XCTAssert(waterL.quantity == quantity)
        XCTAssert(waterL.time == now)
        XCTAssert(waterL.unitString == "L")
        
        let waterMl = Water(quantity: quantity, time: now, unit: .milliLitter)
        XCTAssert(waterMl.quantity == quantity)
        XCTAssert(waterMl.time == now)
        XCTAssert(waterMl.unitString == "mL")
    }
    
    func testStepCountItem() {
        let steps = StepCount(quantity: quantity, time: now)
        XCTAssert(steps.quantity == quantity)
        XCTAssert(steps.time == now)
        XCTAssert(steps.unitString == "step")
    }
    
    func testDistanceItem() {
        let distanceM = SwimmingDistance(quantity: quantity, time: now, unit: .meter)
        XCTAssert(distanceM.quantity == quantity)
        XCTAssert(distanceM.time == now)
        XCTAssert(distanceM.unitString == "m")
        
        let distanceYd = SwimmingDistance(quantity: quantity, time: now, unit: .yard)
        XCTAssert(distanceYd.quantity == quantity)
        XCTAssert(distanceYd.time == now)
        XCTAssert(distanceYd.unitString == "yd")
        
        let distanceKm = CyclingDistance(quantity: quantity, time: now, unit: .kilometer)
        XCTAssert(distanceKm.quantity == quantity)
        XCTAssert(distanceKm.time == now)
        XCTAssert(distanceKm.unitString == "km")
        
        let distanceMi = CyclingDistance(quantity: quantity, time: now, unit: .mile)
        XCTAssert(distanceMi.quantity == quantity)
        XCTAssert(distanceMi.time == now)
        XCTAssert(distanceMi.unitString == "mi")
    }

    // Workout
    func testWorkoutItem() {
        let workout1Detail: ActivityDetail = ActivityDetail(distance: 1000, unit: .meter)
        let workout1 = Workout(.americanFootball(workout1Detail), start: start, end: end, energyBurned: quantity)
        XCTAssert(workout1.start == start)
        XCTAssert(workout1.end == end)
        XCTAssert(workout1.energyBurned == quantity)
    }
    
    func testMindfulTimeItem() {
        let item = MindfulTime(start: start, end: end)
        XCTAssert(item.start == start)
        XCTAssert(item.end == end)
    }
    
    func testSleepAnalysisItem() {
        let item = SleepAnalysis(start: start, end: end, category: .inBed)
        XCTAssert(item.start == start)
        XCTAssert(item.end == end)
        XCTAssert(item.category == .inBed)
    }
    
    // Examination Results
    func testUvIndexItem() {
        let item = UVExposure(value: 3, start: start, end: end)
        XCTAssert(item.start == start)
        XCTAssert(item.end == end)
        XCTAssert(item.value == 3)
        XCTAssert(item.unitString == "")
    }
    
    // Reproductive Health
    func testIntermenstrualBleedingItem() {
        let item = IntermenstrualBleeding(time: now)
        XCTAssert(item.time == now)
    }
    
    // Heart
    func testBloodPressureItem() {
        let diastolic = 100
        let systolic = 130
        let item = BloodPressure(diastolic: diastolic, systolic: systolic, time: now)
        XCTAssert(item.diastolicValue == diastolic)
        XCTAssert(item.systolicValue == systolic)
        XCTAssert(item.time == now)
        XCTAssert(item.diastolic.time == now)
        XCTAssert(item.diastolic.value == diastolic)
        XCTAssert(item.diastolic.unitString == "mmHg")
        XCTAssert(item.systolic.time == now)
        XCTAssert(item.systolic.value == systolic)
        XCTAssert(item.systolic.unitString == "mmHg")
    }
}
