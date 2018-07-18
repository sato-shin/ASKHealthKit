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

        let protein = Protein(quantity: quantity, time: now)
        XCTAssert(protein.quantity == quantity)
        XCTAssert(protein.time == now)
        XCTAssert(protein.unitString == "g")

        let carbohydrate = Carbohydrates(quantity: quantity, time: now)
        XCTAssert(carbohydrate.quantity == quantity)
        XCTAssert(carbohydrate.time == now)
        XCTAssert(carbohydrate.unitString == "g")

        let dietaryFiber = DietaryFiber(quantity: quantity, time: now)
        XCTAssert(dietaryFiber.quantity == quantity)
        XCTAssert(dietaryFiber.time == now)
        XCTAssert(dietaryFiber.unitString == "g")

        let sugar = Sugar(quantity: quantity, time: now)
        XCTAssert(sugar.quantity == quantity)
        XCTAssert(sugar.time == now)
        XCTAssert(sugar.unitString == "g")

        let totalFat = TotalFat(quantity: quantity, time: now)
        XCTAssert(totalFat.quantity == quantity)
        XCTAssert(totalFat.time == now)
        XCTAssert(totalFat.unitString == "g")

        let saturatedFat = SaturatedFat(quantity: quantity, time: now)
        XCTAssert(saturatedFat.quantity == quantity)
        XCTAssert(saturatedFat.time == now)
        XCTAssert(saturatedFat.unitString == "g")

        let monounsaturatedFat = MonounsaturatedFat(quantity: quantity, time: now)
        XCTAssert(monounsaturatedFat.quantity == quantity)
        XCTAssert(monounsaturatedFat.time == now)
        XCTAssert(monounsaturatedFat.unitString == "g")

        let polyunsaturatedFat = PolyunsaturatedFat(quantity: quantity, time: now)
        XCTAssert(polyunsaturatedFat.quantity == quantity)
        XCTAssert(polyunsaturatedFat.time == now)
        XCTAssert(polyunsaturatedFat.unitString == "g")

        let cholesterol = Cholesterol(quantity: quantity, time: now)
        XCTAssert(cholesterol.quantity == quantity)
        XCTAssert(cholesterol.time == now)
        XCTAssert(cholesterol.unitString == "mg")

        let biotin = Biotin(quantity: quantity, time: now)
        XCTAssert(biotin.quantity == quantity)
        XCTAssert(biotin.time == now)
        XCTAssert(biotin.unitString == "mcg")

        let folate = Folate(quantity: quantity, time: now)
        XCTAssert(folate.quantity == quantity)
        XCTAssert(folate.time == now)
        XCTAssert(folate.unitString == "mcg")

        let niacin = Niacin(quantity: quantity, time: now)
        XCTAssert(niacin.quantity == quantity)
        XCTAssert(niacin.time == now)
        XCTAssert(niacin.unitString == "mg")

        let pantothenicAcid = PantothenicAcid(quantity: quantity, time: now)
        XCTAssert(pantothenicAcid.quantity == quantity)
        XCTAssert(pantothenicAcid.time == now)
        XCTAssert(pantothenicAcid.unitString == "mg")

        let riboflavin = Riboflavin(quantity: quantity, time: now)
        XCTAssert(riboflavin.quantity == quantity)
        XCTAssert(riboflavin.time == now)
        XCTAssert(riboflavin.unitString == "mg")

        let thiamin = Thiamin(quantity: quantity, time: now)
        XCTAssert(thiamin.quantity == quantity)
        XCTAssert(thiamin.time == now)
        XCTAssert(thiamin.unitString == "mg")

        let vitaminA = VitaminA(quantity: quantity, time: now)
        XCTAssert(vitaminA.quantity == quantity)
        XCTAssert(vitaminA.time == now)
        XCTAssert(vitaminA.unitString == "mcg")

        let vitaminB6 = VitaminB6(quantity: quantity, time: now)
        XCTAssert(vitaminB6.quantity == quantity)
        XCTAssert(vitaminB6.time == now)
        XCTAssert(vitaminB6.unitString == "mg")

        let vitaminB12 = VitaminB12(quantity: quantity, time: now)
        XCTAssert(vitaminB12.quantity == quantity)
        XCTAssert(vitaminB12.time == now)
        XCTAssert(vitaminB12.unitString == "mcg")

        let vitaminC = VitaminC(quantity: quantity, time: now)
        XCTAssert(vitaminC.quantity == quantity)
        XCTAssert(vitaminC.time == now)
        XCTAssert(vitaminC.unitString == "mg")

        let vitaminD = VitaminD(quantity: quantity, time: now)
        XCTAssert(vitaminD.quantity == quantity)
        XCTAssert(vitaminD.time == now)
        XCTAssert(vitaminD.unitString == "mcg")

        let vitaminE = VitaminE(quantity: quantity, time: now)
        XCTAssert(vitaminE.quantity == quantity)
        XCTAssert(vitaminE.time == now)
        XCTAssert(vitaminE.unitString == "mg")

        let vitaminK = VitaminK(quantity: quantity, time: now)
        XCTAssert(vitaminK.quantity == quantity)
        XCTAssert(vitaminK.time == now)
        XCTAssert(vitaminK.unitString == "mcg")

        let calcium = Calcium(quantity: quantity, time: now)
        XCTAssert(calcium.quantity == quantity)
        XCTAssert(calcium.time == now)
        XCTAssert(calcium.unitString == "mg")

        let chloride = Chloride(quantity: quantity, time: now)
        XCTAssert(chloride.quantity == quantity)
        XCTAssert(chloride.time == now)
        XCTAssert(chloride.unitString == "mg")

        let chromium = Chromium(quantity: quantity, time: now)
        XCTAssert(chromium.quantity == quantity)
        XCTAssert(chromium.time == now)
        XCTAssert(chromium.unitString == "mcg")

        let copper = Copper(quantity: quantity, time: now)
        XCTAssert(copper.quantity == quantity)
        XCTAssert(copper.time == now)
        XCTAssert(copper.unitString == "mg")

        let iodine = Iodine(quantity: quantity, time: now)
        XCTAssert(iodine.quantity == quantity)
        XCTAssert(iodine.time == now)
        XCTAssert(iodine.unitString == "mcg")

        let iron = Iron(quantity: quantity, time: now)
        XCTAssert(iron.quantity == quantity)
        XCTAssert(iron.time == now)
        XCTAssert(iron.unitString == "mg")

        let magnesium = Magnesium(quantity: quantity, time: now)
        XCTAssert(magnesium.quantity == quantity)
        XCTAssert(magnesium.time == now)
        XCTAssert(magnesium.unitString == "mg")

        let manganese = Manganese(quantity: quantity, time: now)
        XCTAssert(manganese.quantity == quantity)
        XCTAssert(manganese.time == now)
        XCTAssert(manganese.unitString == "mg")

        let molybdenum = Molybdenum(quantity: quantity, time: now)
        XCTAssert(molybdenum.quantity == quantity)
        XCTAssert(molybdenum.time == now)
        XCTAssert(molybdenum.unitString == "mcg")

        let phosphorus = Phosphorus(quantity: quantity, time: now)
        XCTAssert(phosphorus.quantity == quantity)
        XCTAssert(phosphorus.time == now)
        XCTAssert(phosphorus.unitString == "mg")

        let potassium = Potassium(quantity: quantity, time: now)
        XCTAssert(potassium.quantity == quantity)
        XCTAssert(potassium.time == now)
        XCTAssert(potassium.unitString == "mg")

        let selenium = Selenium(quantity: quantity, time: now)
        XCTAssert(selenium.quantity == quantity)
        XCTAssert(selenium.time == now)
        XCTAssert(selenium.unitString == "mcg")

        let sodium = Sodium(quantity: quantity, time: now)
        XCTAssert(sodium.quantity == quantity)
        XCTAssert(sodium.time == now)
        XCTAssert(sodium.unitString == "mg")

        let zinc = Zinc(quantity: quantity, time: now)
        XCTAssert(zinc.quantity == quantity)
        XCTAssert(zinc.time == now)
        XCTAssert(zinc.unitString == "mg")

        let caffeine = Caffeine(quantity: quantity, time: now)
        XCTAssert(caffeine.quantity == quantity)
        XCTAssert(caffeine.time == now)
        XCTAssert(caffeine.unitString == "mg")

        let waterL = Water(quantity: quantity, time: now, unit: .litter)
        XCTAssert(waterL.quantity == quantity)
        XCTAssert(waterL.time == now)
        XCTAssert(waterL.unitString == "L")

        let waterMl = Water(quantity: quantity, time: now, unit: .milliLitter)
        XCTAssert(waterMl.quantity == quantity)
        XCTAssert(waterMl.time == now)
        XCTAssert(waterMl.unitString == "mL")

        let waterIC = Water(quantity: quantity, time: now, unit: .imperialCup)
        XCTAssert(waterIC.quantity == quantity)
        XCTAssert(waterIC.time == now)
        XCTAssert(waterIC.unitString == "cup")

        let waterIOz = Water(quantity: quantity, time: now, unit: .imperialOnce)
        XCTAssert(waterIOz.quantity == quantity)
        XCTAssert(waterIOz.time == now)
        XCTAssert(waterIOz.unitString == "fl oz")

        let waterIPt = Water(quantity: quantity, time: now, unit: .imperialPint)
        XCTAssert(waterIPt.quantity == quantity)
        XCTAssert(waterIPt.time == now)
        XCTAssert(waterIPt.unitString == "pt")

        let waterUsC = Water(quantity: quantity, time: now, unit: .usCup)
        XCTAssert(waterUsC.quantity == quantity)
        XCTAssert(waterUsC.time == now)
        XCTAssert(waterUsC.unitString == "cup")

        let waterUsOz = Water(quantity: quantity, time: now, unit: .usOnce)
        XCTAssert(waterUsOz.quantity == quantity)
        XCTAssert(waterUsOz.time == now)
        XCTAssert(waterUsOz.unitString == "fl oz")

        let waterUsPt = Water(quantity: quantity, time: now, unit: .usPint)
        XCTAssert(waterUsPt.quantity == quantity)
        XCTAssert(waterUsPt.time == now)
        XCTAssert(waterUsPt.unitString == "pt")
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
