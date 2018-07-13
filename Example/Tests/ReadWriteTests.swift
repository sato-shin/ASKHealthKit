//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import XCTest
import ASKHealthKit
@testable import Example

class ReadWriteTests: XCTestCase {
    
    let quantity = Double(10)
    let now = Date()
    
    let end = Date()
    let start = Date(timeIntervalSinceNow: -(60 * 10))
    
    let store = MyHealthStore()
    
    func testNutrientItems() {
        let expectation = XCTestExpectation()
        let energy = Energy(quantity: quantity, time: now)
        store.energyStore.write(energy) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
        
        let carbohydrate = Carbohydrate(quantity: quantity, time: now)
        store.carbohydrateStore.write(carbohydrate) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
    }
    
    func testWaterItem() {
        let expectation = XCTestExpectation()
        let waterL = Water(quantity: quantity, time: now, unit: .litter)
        store.waterStore.write(waterL) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
        
        let waterMl = Water(quantity: quantity, time: now, unit: .milliLitter)
        store.waterStore.write(waterMl) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
    }
    
    func testStepCountItem() {
        let writeExpectation = XCTestExpectation(description: "Write step count from health store")
        let step = StepCount(quantity: quantity, time: now)
        store.stepCountStore.write(step) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)
        
        let readExpectation = XCTestExpectation(description: "Read step count from health store")
        store.stepCountStore.readAll { (items: [StepCount], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil)
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)
        
        let deleteExpectation = XCTestExpectation(description: "Delete step count from health store")
        store.stepCountStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }
    
    func testDistanceItem() {
        let expectation = XCTestExpectation()
        let distanceKm = SwimmingDistance(quantity: quantity, time: now, unit: .kilometer)
        store.swimmingDistanceStore.write(distanceKm) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
        
        let distanceYd = SwimmingDistance(quantity: quantity, time: now, unit: .yard)
        store.swimmingDistanceStore.write(distanceYd) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
        
        let distanceM = CyclingDistance(quantity: quantity, time: now, unit: .meter)
        store.cyclingDistanceStore.write(distanceM) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
        
        let distanceMi = CyclingDistance(quantity: quantity, time: now, unit: .mile)
        store.cyclingDistanceStore.write(distanceMi) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
    }
    
    
    func testMindfulTimeItem() {
        let expectation = XCTestExpectation()
        let item = MindfulTime(start: start, end: end)
        store.mindfulTimeStore.write(item) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
        
        let readExpectation = XCTestExpectation(description: "Read step count from health store")
        store.mindfulTimeStore.readAll { (items: [MindfulTime], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.start == self.start, "Expect: \(self.start), Actual: \(String(describing: items.first?.start))")
            XCTAssert(items.first?.end == self.end, "Expect: \(self.end), Actual: \(String(describing: items.first?.end))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)
        
        let deleteExpectation = XCTestExpectation(description: "Delete step count from health store")
        store.mindfulTimeStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }
    
    func testSleepAnalysisItem() {
        let expectation = XCTestExpectation()
        let item = SleepAnalysis(start: start, end: end, category: .inBed)
        store.sleepAnalysisStore.write(item) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
    }
    
    // Examination Results
    func testUvIndexItem() {
        let expectation = XCTestExpectation()
        let item = UVExposure(value: 3, start: start, end: end)
        store.uvExposureStore.write(item) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
    }
    
    // Reproductive Health
    func testIntermenstrualBleedingItem() {
        let expectation = XCTestExpectation()
        let item = IntermenstrualBleeding(time: now)
        store.intermenstrualBleedingStore.write(item) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
    }
    
    // Heart
    func testBloodPressureItem() {
        let expectation = XCTestExpectation()
        let diastolic = 100
        let systolic = 130
        let item = BloodPressure(diastolic: diastolic, systolic: systolic, time: now)
        store.bloodPressureDiastolicStore.write(item.diastolic) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
        store.bloodPressureSystolicStore.write(item.systolic) { success, error in
            XCTAssert(success)
            XCTAssert(error == nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
    }
}
