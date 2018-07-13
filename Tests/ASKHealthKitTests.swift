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
        let energy = Energy(quantity: quantity, time: now)
        XCTAssert(energy.quantity == quantity)
        XCTAssert(energy.time == now)
        XCTAssert(energy.unitString == "kcal")
        XCTAssertNotNil(energy.hkObject)
        
        let carbohydrate = Carbohydrate(quantity: quantity, time: now)
        XCTAssert(carbohydrate.quantity == quantity)
        XCTAssert(carbohydrate.time == now)
        XCTAssert(carbohydrate.unitString == "g")
        XCTAssertNotNil(carbohydrate.hkObject)
    }
    
    func testWaterItem() {
        let waterL = Water(quantity: quantity, time: now, unit: .litter)
        XCTAssert(waterL.quantity == quantity)
        XCTAssert(waterL.time == now)
        XCTAssert(waterL.unitString == "L")
        XCTAssertNotNil(waterL.hkObject)
        
        let waterMl = Water(quantity: quantity, time: now, unit: .milliLitter)
        XCTAssert(waterMl.quantity == quantity)
        XCTAssert(waterMl.time == now)
        XCTAssert(waterMl.unitString == "mL")
        XCTAssertNotNil(waterMl.hkObject)

        let waterIC = Water(quantity: quantity, time: now, unit: .imperialCup)
        XCTAssert(waterIC.quantity == quantity)
        XCTAssert(waterIC.time == now)
        XCTAssert(waterIC.unitString == "cup")
        XCTAssertNotNil(waterIC.hkObject)

        let waterIOz = Water(quantity: quantity, time: now, unit: .imperialOnce)
        XCTAssert(waterIOz.quantity == quantity)
        XCTAssert(waterIOz.time == now)
        XCTAssert(waterIOz.unitString == "fl oz")
        XCTAssertNotNil(waterIOz.hkObject)

        let waterIPt = Water(quantity: quantity, time: now, unit: .imperialPint)
        XCTAssert(waterIPt.quantity == quantity)
        XCTAssert(waterIPt.time == now)
        XCTAssert(waterIPt.unitString == "pt")
        XCTAssertNotNil(waterIPt.hkObject)

        let waterUsC = Water(quantity: quantity, time: now, unit: .usCup)
        XCTAssert(waterUsC.quantity == quantity)
        XCTAssert(waterUsC.time == now)
        XCTAssert(waterUsC.unitString == "cup")
        XCTAssertNotNil(waterUsC.hkObject)

        let waterUsOz = Water(quantity: quantity, time: now, unit: .usOnce)
        XCTAssert(waterUsOz.quantity == quantity)
        XCTAssert(waterUsOz.time == now)
        XCTAssert(waterUsOz.unitString == "fl oz")
        XCTAssertNotNil(waterUsOz.hkObject)

        let waterUsPt = Water(quantity: quantity, time: now, unit: .usPint)
        XCTAssert(waterUsPt.quantity == quantity)
        XCTAssert(waterUsPt.time == now)
        XCTAssert(waterUsPt.unitString == "pt")
        XCTAssertNotNil(waterUsPt.hkObject)
    }
    
    func testStepCountItem() {
        let step = StepCount(quantity: quantity, time: now)
        XCTAssert(step.quantity == quantity)
        XCTAssert(step.time == now)
        XCTAssert(step.unitString == "step")
        XCTAssertNotNil(step.hkObject)
    }
    
    func testDistanceItem() {
        let distanceM = SwimmingDistance(quantity: quantity, time: now, unit: .meter)
        XCTAssert(distanceM.quantity == quantity)
        XCTAssert(distanceM.time == now)
        XCTAssert(distanceM.unitString == "m")
        XCTAssertNotNil(distanceM.hkObject)
        
        let distanceYd = SwimmingDistance(quantity: quantity, time: now, unit: .yard)
        XCTAssert(distanceYd.quantity == quantity)
        XCTAssert(distanceYd.time == now)
        XCTAssert(distanceYd.unitString == "yd")
        XCTAssertNotNil(distanceYd.hkObject)
        
        let distanceKm = CyclingDistance(quantity: quantity, time: now, unit: .kilometer)
        XCTAssert(distanceKm.quantity == quantity)
        XCTAssert(distanceKm.time == now)
        XCTAssert(distanceKm.unitString == "km")
        XCTAssertNotNil(distanceKm.hkObject)
        
        let distanceMi = CyclingDistance(quantity: quantity, time: now, unit: .mile)
        XCTAssert(distanceMi.quantity == quantity)
        XCTAssert(distanceMi.time == now)
        XCTAssert(distanceMi.unitString == "mi")
        XCTAssertNotNil(distanceMi.hkObject)
    }

    // Workout
    func testWorkoutItem() {
        let workout1Detail: ActivityDetail = ActivityDetail(distance: 1000, unit: .meter)
        let workout1 = Workout(.americanFootball(workout1Detail), start: start, end: end, energyBurned: quantity)
        XCTAssert(workout1.start == start)
        XCTAssert(workout1.end == end)
        XCTAssert(workout1.energyBurned == quantity)
        XCTAssertNotNil(workout1.hkObject)
    }
    
    func testMindfulTimeItem() {
        let time = MindfulTime(start: start, end: end)
        XCTAssert(time.start == start)
        XCTAssert(time.end == end)
        XCTAssertNotNil(time.hkObject)
    }
    
    func testSleepAnalysisItem() {
        let time = SleepAnalysis(start: start, end: end, category: .inBed)
        XCTAssert(time.start == start)
        XCTAssert(time.end == end)
        XCTAssert(time.value == HKCategoryValueSleepAnalysis.inBed.rawValue)
        XCTAssertNotNil(time.hkObject)
    }
    
    func testUvIndexItem() {
        let index = UVExposure(value: 3, start: start, end: end)
        XCTAssert(index.start == start)
        XCTAssert(index.end == end)
        XCTAssert(index.value == 3)
        XCTAssert(Double(index.value) == index.quantity)
        XCTAssert(index.unitString == "")
        XCTAssertNotNil(index.hkObject)
    }
    
    func testInsulinDeliveryItem() {
        let item = InsulinDelivery(quantity: quantity, start: start, end: end, purpose: .basal)
        XCTAssert(item.quantity == quantity)
        XCTAssert(item.start == start)
        XCTAssert(item.end == end)
        XCTAssert(item.purpose == .basal)
        XCTAssert(item.unitString == "IU")
        XCTAssert(item.hkObject?.metadata?.count == 1)
    }
    
    func testIntermenstrualBleedingItem() {
        let item = IntermenstrualBleeding(time: now)
        XCTAssert(item.start == now)
        XCTAssert(item.end == now)
        XCTAssert(item.time == now)
        XCTAssert(item.value == HKCategoryValue.notApplicable.rawValue)
        XCTAssertNotNil(item.hkObject)
    }
    
    func testBloodPressureItem() {
        let diastolic = 100
        let systolic = 130
        let item = BloodPressure(diastolic: diastolic, systolic: systolic, time: now)
        XCTAssert(item.diastolicValue == diastolic)
        XCTAssert(item.systolicValue == systolic)
        XCTAssert(item.time == now)
        XCTAssertNotNil(item.hkObject)
        XCTAssert(item.diastolic.time == BloodPressureDiastolic(value: diastolic, time: now).time)
        XCTAssert(item.diastolic.value == BloodPressureDiastolic(value: diastolic, time: now).value)
        XCTAssert(item.diastolic.unitString == "mmHg")
        XCTAssert(item.systolic.time == BloodPressureSystolic(value: systolic, time: now).time)
        XCTAssert(item.systolic.value == BloodPressureSystolic(value: systolic, time: now).value)
        XCTAssert(item.systolic.unitString == "mmHg")
    }
}
