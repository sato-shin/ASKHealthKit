//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import XCTest
import ASKHealthKit
@testable import Example

class NutrientItemsReadWriteTests: XCTestCase {

    let quantity = Double(10)
    let now = Date()

    let end = Date()
    let start = Date(timeIntervalSinceNow: -(60 * 10))

    let store = MyHealthStore()

    func testEnergyItem() {
        let writeExpectation = XCTestExpectation(description: "Write energy into health store")
        let item = Energy(quantity: quantity, time: now)
        store.energyStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read energy from health store")
        store.energyStore.readAll { (items: [EnergyIntake], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete energy from health store")
        store.energyStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testProteinItem() {
        let writeExpectation = XCTestExpectation(description: "Write protein into health store")
        let item = Protein(quantity: quantity, time: now)
        store.proteinStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read protein from health store")
        store.proteinStore.readAll { (items: [Protein], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete protein from health store")
        store.proteinStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testCarbohydratesItem() {
        let writeExpectation = XCTestExpectation(description: "Write carbohydrate into health store")
        let item = Carbohydrates(quantity: quantity, time: now)
        store.carbohydrateStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read carbohydrate from health store")
        store.carbohydrateStore.readAll { (items: [Carbohydrates], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete carbohydrate from health store")
        store.carbohydrateStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testDietaryFiberItem() {
        let writeExpectation = XCTestExpectation(description: "Write dietaryFiber into health store")
        let item = DietaryFiber(quantity: quantity, time: now)
        store.dietaryFiberStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read dietaryFiber from health store")
        store.dietaryFiberStore.readAll { (items: [DietaryFiber], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete dietaryFiber from health store")
        store.dietaryFiberStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testSugarItem() {
        let writeExpectation = XCTestExpectation(description: "Write sugar into health store")
        let item = Sugar(quantity: quantity, time: now)
        store.sugarStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read sugar from health store")
        store.sugarStore.readAll { (items: [Sugar], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete sugar from health store")
        store.sugarStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testTotalFatItem() {
        let writeExpectation = XCTestExpectation(description: "Write totalFat into health store")
        let item = TotalFat(quantity: quantity, time: now)
        store.totalFatStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read totalFat from health store")
        store.totalFatStore.readAll { (items: [TotalFat], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete totalFat from health store")
        store.totalFatStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testSaturatedFatItem() {
        let writeExpectation = XCTestExpectation(description: "Write saturatedFat into health store")
        let item = SaturatedFat(quantity: quantity, time: now)
        store.saturatedFatStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read saturatedFat from health store")
        store.saturatedFatStore.readAll { (items: [SaturatedFat], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete saturatedFat from health store")
        store.saturatedFatStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testMonounsaturatedFatItem() {
        let writeExpectation = XCTestExpectation(description: "Write monounsaturatedFat into health store")
        let item = MonounsaturatedFat(quantity: quantity, time: now)
        store.monounsaturatedFatStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read monounsaturatedFat from health store")
        store.monounsaturatedFatStore.readAll { (items: [MonounsaturatedFat], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete monounsaturatedFat from health store")
        store.monounsaturatedFatStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testPolyunsaturatedFatItem() {
        let writeExpectation = XCTestExpectation(description: "Write polyunsaturatedFat into health store")
        let item = PolyunsaturatedFat(quantity: quantity, time: now)
        store.polyunsaturatedFatStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read polyunsaturatedFat from health store")
        store.polyunsaturatedFatStore.readAll { (items: [PolyunsaturatedFat], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete polyunsaturatedFat from health store")
        store.polyunsaturatedFatStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testCholesterolItem() {
        let writeExpectation = XCTestExpectation(description: "Write cholesterol into health store")
        let item = Cholesterol(quantity: quantity, time: now)
        store.cholesterolStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read cholesterol from health store")
        store.cholesterolStore.readAll { (items: [Cholesterol], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete cholesterol from health store")
        store.cholesterolStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testBiotinItem() {
        let writeExpectation = XCTestExpectation(description: "Write biotin into health store")
        let item = Biotin(quantity: quantity, time: now)
        store.biotinStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read biotin from health store")
        store.biotinStore.readAll { (items: [Biotin], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete biotin from health store")
        store.biotinStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testFolateItem() {
        let writeExpectation = XCTestExpectation(description: "Write folate into health store")
        let item = Folate(quantity: quantity, time: now)
        store.folateStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read folate from health store")
        store.folateStore.readAll { (items: [Folate], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete folate from health store")
        store.folateStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testNiacinItem() {
        let writeExpectation = XCTestExpectation(description: "Write niacin into health store")
        let item = Niacin(quantity: quantity, time: now)
        store.niacinStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read niacin from health store")
        store.niacinStore.readAll { (items: [Niacin], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete niacin from health store")
        store.niacinStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testPantothenicAcidItem() {
        let writeExpectation = XCTestExpectation(description: "Write pantothenicAcid into health store")
        let item = PantothenicAcid(quantity: quantity, time: now)
        store.pantothenicAcidStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read pantothenicAcid from health store")
        store.pantothenicAcidStore.readAll { (items: [PantothenicAcid], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete pantothenicAcid from health store")
        store.pantothenicAcidStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testRiboflavinItem() {
        let writeExpectation = XCTestExpectation(description: "Write riboflavin into health store")
        let item = Riboflavin(quantity: quantity, time: now)
        store.riboflavinStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read riboflavin from health store")
        store.riboflavinStore.readAll { (items: [Riboflavin], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete riboflavin from health store")
        store.riboflavinStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testThiaminItem() {
        let writeExpectation = XCTestExpectation(description: "Write thiamin into health store")
        let item = Thiamin(quantity: quantity, time: now)
        store.thiaminStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read thiamin from health store")
        store.thiaminStore.readAll { (items: [Thiamin], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete thiamin from health store")
        store.thiaminStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testVitaminAItem() {
        let writeExpectation = XCTestExpectation(description: "Write vitaminA into health store")
        let item = VitaminA(quantity: quantity, time: now)
        store.vitaminAStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read vitaminA from health store")
        store.vitaminAStore.readAll { (items: [VitaminA], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete vitaminA from health store")
        store.vitaminAStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testVitaminB6Item() {
        let writeExpectation = XCTestExpectation(description: "Write vitaminB6 into health store")
        let item = VitaminB6(quantity: quantity, time: now)
        store.vitaminB6Store.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read vitaminB6 from health store")
        store.vitaminB6Store.readAll { (items: [VitaminB6], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete vitaminB6 from health store")
        store.vitaminB6Store.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testVitaminB12Item() {
        let writeExpectation = XCTestExpectation(description: "Write vitaminB12 into health store")
        let item = VitaminB12(quantity: quantity, time: now)
        store.vitaminB12Store.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read vitaminB12 from health store")
        store.vitaminB12Store.readAll { (items: [VitaminB12], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete vitaminB12 from health store")
        store.vitaminB12Store.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testVitaminCItem() {
        let writeExpectation = XCTestExpectation(description: "Write vitaminC into health store")
        let item = VitaminC(quantity: quantity, time: now)
        store.vitaminCStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read vitaminC from health store")
        store.vitaminCStore.readAll { (items: [VitaminC], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete vitaminC from health store")
        store.vitaminCStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testVitaminDItem() {
        let writeExpectation = XCTestExpectation(description: "Write vitaminD into health store")
        let item = VitaminD(quantity: quantity, time: now)
        store.vitaminDStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read vitaminD from health store")
        store.vitaminDStore.readAll { (items: [VitaminD], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete vitaminD from health store")
        store.vitaminDStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testVitaminEItem() {
        let writeExpectation = XCTestExpectation(description: "Write vitaminE into health store")
        let item = VitaminE(quantity: quantity, time: now)
        store.vitaminEStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read vitaminE from health store")
        store.vitaminEStore.readAll { (items: [VitaminE], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete vitaminE from health store")
        store.vitaminEStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testVitaminKItem() {
        let writeExpectation = XCTestExpectation(description: "Write vitaminK into health store")
        let item = VitaminK(quantity: quantity, time: now)
        store.vitaminKStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read vitaminK from health store")
        store.vitaminKStore.readAll { (items: [VitaminK], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete vitaminK from health store")
        store.vitaminKStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testCalciumItem() {
        let writeExpectation = XCTestExpectation(description: "Write calcium into health store")
        let item = Calcium(quantity: quantity, time: now)
        store.calciumStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read calcium from health store")
        store.calciumStore.readAll { (items: [Calcium], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete calcium from health store")
        store.calciumStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testChlorideItem() {
        let writeExpectation = XCTestExpectation(description: "Write chloride into health store")
        let item = Chloride(quantity: quantity, time: now)
        store.chlorideStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read chloride from health store")
        store.chlorideStore.readAll { (items: [Chloride], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete chloride from health store")
        store.chlorideStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testChromiumItem() {
        let writeExpectation = XCTestExpectation(description: "Write chromium into health store")
        let item = Chromium(quantity: quantity, time: now)
        store.chromiumStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read chromium from health store")
        store.chromiumStore.readAll { (items: [Chromium], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete chromium from health store")
        store.chromiumStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testCopperItem() {
        let writeExpectation = XCTestExpectation(description: "Write copper into health store")
        let item = Copper(quantity: quantity, time: now)
        store.copperStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read copper from health store")
        store.copperStore.readAll { (items: [Copper], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete copper from health store")
        store.copperStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testIodineItem() {
        let writeExpectation = XCTestExpectation(description: "Write iodine into health store")
        let item = Iodine(quantity: quantity, time: now)
        store.iodineStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read iodine from health store")
        store.iodineStore.readAll { (items: [Iodine], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete iodine from health store")
        store.iodineStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testIronItem() {
        let writeExpectation = XCTestExpectation(description: "Write iron into health store")
        let item = Iron(quantity: quantity, time: now)
        store.ironStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read iron from health store")
        store.ironStore.readAll { (items: [Iron], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete iron from health store")
        store.ironStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testMagnesiumItem() {
        let writeExpectation = XCTestExpectation(description: "Write magnesium into health store")
        let item = Magnesium(quantity: quantity, time: now)
        store.magnesiumStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read magnesium from health store")
        store.magnesiumStore.readAll { (items: [Magnesium], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete magnesium from health store")
        store.magnesiumStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testManganeseItem() {
        let writeExpectation = XCTestExpectation(description: "Write manganese into health store")
        let item = Manganese(quantity: quantity, time: now)
        store.manganeseStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read manganese from health store")
        store.manganeseStore.readAll { (items: [Manganese], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete manganese from health store")
        store.manganeseStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testMolybdenumItem() {
        let writeExpectation = XCTestExpectation(description: "Write molybdenum into health store")
        let item = Molybdenum(quantity: quantity, time: now)
        store.molybdenumStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read molybdenum from health store")
        store.molybdenumStore.readAll { (items: [Molybdenum], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete molybdenum from health store")
        store.molybdenumStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testPhosphorusItem() {
        let writeExpectation = XCTestExpectation(description: "Write phosphorus into health store")
        let item = Phosphorus(quantity: quantity, time: now)
        store.phosphorusStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read phosphorus from health store")
        store.phosphorusStore.readAll { (items: [Phosphorus], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete phosphorus from health store")
        store.phosphorusStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testPotassiumItem() {
        let writeExpectation = XCTestExpectation(description: "Write potassium into health store")
        let item = Potassium(quantity: quantity, time: now)
        store.potassiumStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read potassium from health store")
        store.potassiumStore.readAll { (items: [Potassium], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete potassium from health store")
        store.potassiumStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testSeleniumItem() {
        let writeExpectation = XCTestExpectation(description: "Write selenium into health store")
        let item = Selenium(quantity: quantity, time: now)
        store.seleniumStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read selenium from health store")
        store.seleniumStore.readAll { (items: [Selenium], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete selenium from health store")
        store.seleniumStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testSodiumItem() {
        let writeExpectation = XCTestExpectation(description: "Write sodium into health store")
        let item = Sodium(quantity: quantity, time: now)
        store.sodiumStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read sodium from health store")
        store.sodiumStore.readAll { (items: [Sodium], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete sodium from health store")
        store.sodiumStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testZincItem() {
        let writeExpectation = XCTestExpectation(description: "Write zinc into health store")
        let item = Zinc(quantity: quantity, time: now)
        store.zincStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read zinc from health store")
        store.zincStore.readAll { (items: [Zinc], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete zinc from health store")
        store.zincStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testCaffeineItem() {
        let writeExpectation = XCTestExpectation(description: "Write caffeine into health store")
        let item = Caffeine(quantity: quantity, time: now)
        store.caffeineStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read caffeine from health store")
        store.caffeineStore.readAll { (items: [Caffeine], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete caffeine from health store")
        store.caffeineStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testWaterLitterItem() {
        let writeExpectation = XCTestExpectation(description: "Write water (Litter) into health store")
        Water.defaultUnit = .litter
        let item = Water(quantity: quantity, time: now)
        store.waterStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read water (Litter) from health store")
        store.waterStore.readAll { (items: [Water], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete water (Litter) from health store")
        store.waterStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }

    func testWaterImperialOnceItem() {
        let writeExpectation = XCTestExpectation(description: "Write water (Imperial Once) into health store")
        Water.defaultUnit = .imperialOnce
        let item = Water(quantity: quantity, time: now)
        store.waterStore.write(item) { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            writeExpectation.fulfill()
        }
        wait(for: [writeExpectation], timeout: 1)

        let readExpectation = XCTestExpectation(description: "Read water (Imperial Once) from health store")
        store.waterStore.readAll { (items: [Water], error: Error?) in
            XCTAssert(items.count == 1, "Expect: 1, Actual: \(items.count)")
            XCTAssert(items.first?.quantity == self.quantity, "Expect: \(self.quantity), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(items.first?.time == self.now, "Expect: \(self.now), Actual: \(String(describing: items.first?.quantity))")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            readExpectation.fulfill()
        }
        wait(for: [readExpectation], timeout: 1)

        let deleteExpectation = XCTestExpectation(description: "Delete water (Imperial Once) from health store")
        store.waterStore.deleteAll { success, error in
            XCTAssert(success, "Expect: true, Actual: \(success)")
            XCTAssert(error == nil, "Error occurred: \(error!.localizedDescription)")
            deleteExpectation.fulfill()
        }
        wait(for: [deleteExpectation], timeout: 1)
    }
    
}
