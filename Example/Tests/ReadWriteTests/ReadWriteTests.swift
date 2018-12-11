//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import XCTest
import ASKHealthKit
@testable import Example

class ReadWriteTests: XCTestCase {
//    
//    let quantity = Double(10)
//    let now = Date()
//
//    let end = Date()
//    let start = Date(timeIntervalSinceNow: -(60 * 10))
//
//    let store = HealthStore()
//
//    func testWriteAndRead() {
//        let writeExpectation = XCTestExpectation(description: "Write item into health store")
//        let originItems = [
//            Energy(quantity: quantity, time: now),
//            Energy(quantity: quantity*2, time: now.addingTimeInterval(-60*60*24)),
//            Energy(quantity: quantity*3, time: now.addingTimeInterval(-60*60*24*2)),
//            Energy(quantity: quantity*4, time: now.addingTimeInterval(-60*60*24*3)),
//            Energy(quantity: quantity*5, time: now.addingTimeInterval(60*60*24)),
//        ]
//        store.energyStore.write(originItems) { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            writeExpectation.fulfill()
//        }
//        wait(for: [writeExpectation], timeout: 1)
//
//        let readExpectation1 = XCTestExpectation(description: "Read item from health store")
//        store.energyStore.readAll { (items: [Energy], error: Error?) in
//            XCTAssert(items.count == originItems.count, "Expect: \(originItems.count), Actual: \(items.count)")
//            XCTAssert(items.first?.quantity == self.quantity*4, "Expect: \(self.quantity*4), Actual: \(String(describing: items.first?.quantity))")
//            XCTAssert(items.first?.time == self.now.addingTimeInterval(60*60*24), "Expect: \(self.now.addingTimeInterval(60*60*24)), Actual: \(String(describing: items.first?.time))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation1.fulfill()
//        }
//        wait(for: [readExpectation1], timeout: 1)
//
//        let readExpectation2 = XCTestExpectation(description: "Read item from health store")
//        store.energyStore.readLatest(from: now.addingTimeInterval((60*60*24)-1)) { (items: [Energy], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity*4), Actual: \(String(describing: items.first?.quantity))")
//            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.time))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation2.fulfill()
//        }
//        wait(for: [readExpectation2], timeout: 1)
//
//        let readExpectation3 = XCTestExpectation(description: "Read item from health store")
//        store.energyStore.read(start: now.addingTimeInterval((-60*60*24*3)+1), end: now, limit: 2) { (items: [Energy], error: Error?) in
//            XCTAssert(items.count == 2, "Expect: 2, Actual: \(items.count)")
//            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity*4), Actual: \(String(describing: items.first?.quantity))")
//            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.time))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation3.fulfill()
//        }
//        wait(for: [readExpectation3], timeout: 1)
//
//        let deleteExpectation = XCTestExpectation(description: "Delete item from health store")
//        store.energyStore.deleteAll { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            deleteExpectation.fulfill()
//        }
//        wait(for: [deleteExpectation], timeout: 1)
//    }
//
//    // Activity
//    func testStepCountItem() {
//        let writeExpectation = XCTestExpectation(description: "Write step count into health store")
//        let item = StepCount(quantity: quantity, time: now)
//        store.stepCountStore.write(item) { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            writeExpectation.fulfill()
//        }
//        wait(for: [writeExpectation], timeout: 1)
//        
//        let readExpectation = XCTestExpectation(description: "Read step count from health store")
//        store.stepCountStore.readAll { (items: [StepCount], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
//            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.time))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation.fulfill()
//        }
//        wait(for: [readExpectation], timeout: 1)
//        
//        let deleteExpectation = XCTestExpectation(description: "Delete step count from health store")
//        store.stepCountStore.deleteAll { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            deleteExpectation.fulfill()
//        }
//        wait(for: [deleteExpectation], timeout: 1)
//    }
//    
//    func testSwimmingDistanceItem() {
//        let writeExpectation = XCTestExpectation(description: "Write swimming distance into health store")
//        SwimmingDistance.defaultUnit = .kilometer
//        let item = SwimmingDistance(quantity: quantity, time: now)
//        store.swimmingDistanceStore.write(item) { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            writeExpectation.fulfill()
//        }
//        wait(for: [writeExpectation], timeout: 1)
//
//        let readExpectation1 = XCTestExpectation(description: "Read swimming distance from health store")
//        store.swimmingDistanceStore.readAll { (items: [SwimmingDistance], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
//            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.time))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation1.fulfill()
//        }
//        wait(for: [readExpectation1], timeout: 1)
//
//        let readExpectation2 = XCTestExpectation(description: "Read swimming distance from health store")
//        SwimmingDistance.defaultUnit = .meter
//        store.swimmingDistanceStore.readAll { (items: [SwimmingDistance], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.quantity == self.quantity * 1000, "Expect: \(self.quantity * 1000), Actual: \(String(describing: items.first?.quantity))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation2.fulfill()
//        }
//        wait(for: [readExpectation2], timeout: 1)
//
//        let deleteExpectation = XCTestExpectation(description: "Delete swimming distance from health store")
//        store.swimmingDistanceStore.deleteAll { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            deleteExpectation.fulfill()
//        }
//        wait(for: [deleteExpectation], timeout: 1)
//    }
//
//    func cyclingDistanceItem() {
//        let writeExpectation = XCTestExpectation(description: "Write cycling distance into health store")
//        CyclingDistance.defaultUnit = .mile
//        let item = CyclingDistance(quantity: quantity, time: now)
//        store.cyclingDistanceStore.write(item) { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            writeExpectation.fulfill()
//        }
//        wait(for: [writeExpectation], timeout: 1)
//
//        let readExpectation1 = XCTestExpectation(description: "Read cycling distance from health store")
//        store.cyclingDistanceStore.readAll { (items: [CyclingDistance], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
//            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.time))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation1.fulfill()
//        }
//        wait(for: [readExpectation1], timeout: 1)
//
//        let readExpectation2 = XCTestExpectation(description: "Read cycling distance from health store")
//        CyclingDistance.defaultUnit = .yard
//        store.cyclingDistanceStore.readAll { (items: [CyclingDistance], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.quantity == self.quantity * 1760, "Expect: \(self.quantity * 1760), Actual: \(String(describing: items.first?.quantity))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation2.fulfill()
//        }
//        wait(for: [readExpectation2], timeout: 1)
//
//        let deleteExpectation = XCTestExpectation(description: "Delete cycling distance from health store")
//        store.cyclingDistanceStore.deleteAll { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            deleteExpectation.fulfill()
//        }
//        wait(for: [deleteExpectation], timeout: 1)
//    }
//
//    // Workout
//    func testWorkoutItem() {
//        let writeExpectation = XCTestExpectation(description: "Write workout into health store")
//        ActivityDetail.defaultUnit = .kilometer
//        let detail = ActivityDetail(distance: 1)
//        let item = Workout(.americanFootball(detail), start: start, end: end, energyBurned: quantity)
//        store.workoutStore.write(item) { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            writeExpectation.fulfill()
//        }
//        wait(for: [writeExpectation], timeout: 1)
//
//        let readExpectation = XCTestExpectation(description: "Read workout from health store")
//        store.workoutStore.readAll { (items: [Workout], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.start == self.start, "Expect: \(self.start), Actual: \(String(describing: items.first?.start))")
//            XCTAssert(items.first?.end == self.end, "Expect: \(self.end), Actual: \(String(describing: items.first?.end))")
//            XCTAssert(items.first?.energyBurned == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.energyBurned))")
//            XCTAssert(items.first?.activityType.detail == detail, "Expect: \(detail), Actual: \(String(describing: items.first?.activityType.detail))")
//            if case .americanFootball? = items.first?.activityType { }
//            else { XCTAssert(false, "Expect: \(ActivityType.americanFootball(nil)), Actual: \(String(describing: items.first?.activityType))") }
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation.fulfill()
//        }
//        wait(for: [readExpectation], timeout: 1)
//
//        let deleteExpectation = XCTestExpectation(description: "Delete workout from health store")
//        store.workoutStore.deleteAll { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            deleteExpectation.fulfill()
//        }
//        wait(for: [deleteExpectation], timeout: 1)
//    }
//    
//    // Mindfulness
//    func testMindfulTimeItem() {
//        let writeExpectation = XCTestExpectation(description: "Write mindful time into health store")
//        let item = MindfulTime(start: start, end: end)
//        store.mindfulTimeStore.write(item) { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            writeExpectation.fulfill()
//        }
//        wait(for: [writeExpectation], timeout: 1)
//        
//        let readExpectation = XCTestExpectation(description: "Read mindful time from health store")
//        store.mindfulTimeStore.readAll { (items: [MindfulTime], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.start == self.start, "Expect: \(self.start), Actual: \(String(describing: items.first?.start))")
//            XCTAssert(items.first?.end == self.end, "Expect: \(self.end), Actual: \(String(describing: items.first?.end))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation.fulfill()
//        }
//        wait(for: [readExpectation], timeout: 1)
//        
//        let deleteExpectation = XCTestExpectation(description: "Delete mindful time from health store")
//        store.mindfulTimeStore.deleteAll { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            deleteExpectation.fulfill()
//        }
//        wait(for: [deleteExpectation], timeout: 1)
//    }
//    
//    func testSleepAnalysisItem() {
//        let writeExpectation = XCTestExpectation(description: "Write sleep analysis into health store")
//        let item = SleepAnalysis(start: start, end: end, category: .inBed)
//        store.sleepAnalysisStore.write(item) { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            writeExpectation.fulfill()
//        }
//        wait(for: [writeExpectation], timeout: 1)
//
//        let readExpectation = XCTestExpectation(description: "Read sleep analysis from health store")
//        store.sleepAnalysisStore.readAll { (items: [SleepAnalysis], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.start == self.start, "Expect: \(self.start), Actual: \(String(describing: items.first?.start))")
//            XCTAssert(items.first?.end == self.end, "Expect: \(self.end), Actual: \(String(describing: items.first?.end))")
//            XCTAssert(items.first?.category == .inBed, "Expect: \(SleepAnalysis.Category.inBed), Actual: \(String(describing: items.first?.category))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation.fulfill()
//        }
//        wait(for: [readExpectation], timeout: 1)
//
//        let deleteExpectation = XCTestExpectation(description: "Delete sleep analysis from health store")
//        store.sleepAnalysisStore.deleteAll { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            deleteExpectation.fulfill()
//        }
//        wait(for: [deleteExpectation], timeout: 1)
//    }
//    
//    // Examination Results
//    func testUvExposureItem() {
//        let writeExpectation = XCTestExpectation(description: "Write UV Exposure into health store")
//        let item = UVExposure(value: Int(quantity), start: start, end: end)
//        store.uvExposureStore.write(item) { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            writeExpectation.fulfill()
//        }
//        wait(for: [writeExpectation], timeout: 1)
//
//        let readExpectation = XCTestExpectation(description: "Read UV Exposure from health store")
//        store.uvExposureStore.readAll { (items: [UVExposure], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.start == self.start, "Expect: \(self.start), Actual: \(String(describing: items.first?.start))")
//            XCTAssert(items.first?.end == self.end, "Expect: \(self.end), Actual: \(String(describing: items.first?.end))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation.fulfill()
//        }
//        wait(for: [readExpectation], timeout: 1)
//
//        let deleteExpectation = XCTestExpectation(description: "Delete UV Exposure from health store")
//        store.uvExposureStore.deleteAll { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            deleteExpectation.fulfill()
//        }
//        wait(for: [deleteExpectation], timeout: 1)
//    }
//    
//    // Reproductive Health
//    func testIntermenstrualBleedingItem() {
//        let writeExpectation = XCTestExpectation(description: "Write intermenstrual bleeding into health store")
//        let item = IntermenstrualBleeding(time: now)
//        store.intermenstrualBleedingStore.write(item) { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            writeExpectation.fulfill()
//        }
//        wait(for: [writeExpectation], timeout: 1)
//
//        let readExpectation = XCTestExpectation(description: "Read intermenstrual bleeding from health store")
//        store.intermenstrualBleedingStore.readAll { (items: [IntermenstrualBleeding], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.time))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation.fulfill()
//        }
//        wait(for: [readExpectation], timeout: 1)
//
//        let deleteExpectation = XCTestExpectation(description: "Delete intermenstrual bleeding from health store")
//        store.intermenstrualBleedingStore.deleteAll { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            deleteExpectation.fulfill()
//        }
//        wait(for: [deleteExpectation], timeout: 1)
//    }
//    
//    // Heart
//    func testBloodPressureItem() {
//        let writeExpectation = XCTestExpectation(description: "Write blood pressure into health store")
//        let diastolic = 100
//        let systolic = 130
//        let item = BloodPressure(diastolic: diastolic, systolic: systolic, time: now)
//        store.bloodPressureStore.write(item) { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            writeExpectation.fulfill()
//        }
//        wait(for: [writeExpectation], timeout: 1)
//
//        let readExpectation = XCTestExpectation(description: "Read blood pressure from health store")
//        store.bloodPressureStore.readAll { (items: [BloodPressure], error: Error?) in
//            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
//            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.time))")
//            XCTAssert(items.first?.diastolicValue == diastolic, "Expect: \(diastolic), Actual: \(String(describing: items.first?.diastolicValue))")
//            XCTAssert(items.first?.systolicValue == systolic, "Expect: \(systolic), Actual: \(String(describing: items.first?.systolicValue))")
//            XCTAssert(items.first?.diastolic.value == diastolic, "Expect: \(diastolic), Actual: \(String(describing: items.first?.diastolic.value))")
//            XCTAssert(items.first?.systolic.value == systolic, "Expect: \(systolic), Actual: \(String(describing: items.first?.systolic.value))")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            readExpectation.fulfill()
//        }
//        wait(for: [readExpectation], timeout: 1)
//
//        let deleteExpectation = XCTestExpectation(description: "Delete blood pressure from health store")
//        store.bloodPressureStore.deleteAll { success, error in
//            XCTAssert(success, "Expect: true, Actual: \(success)")
//            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
//            deleteExpectation.fulfill()
//        }
//        wait(for: [deleteExpectation], timeout: 1)
//    }
}
