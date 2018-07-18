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
        XCTAssert(Energy.identifier == .dietaryEnergyConsumed)
        XCTAssert(energy.quantity == quantity)
        XCTAssert(energy.time == now)
        XCTAssert(energy.start == now)
        XCTAssert(energy.end == now)
        XCTAssert(energy.unitString == "kcal")
        XCTAssertNotNil(energy.hkObject)
        
        let protein = Protein(quantity: quantity, time: now)
        XCTAssert(Protein.identifier == .dietaryProtein)
        XCTAssert(protein.quantity == quantity)
        XCTAssert(protein.time == now)
        XCTAssert(protein.start == now)
        XCTAssert(protein.end == now)
        XCTAssert(protein.unitString == "g")
        XCTAssertNotNil(protein.hkObject)

        let carbohydrates = Carbohydrates(quantity: quantity, time: now)
        XCTAssert(Carbohydrates.identifier == .dietaryCarbohydrates)
        XCTAssert(carbohydrates.quantity == quantity)
        XCTAssert(carbohydrates.time == now)
        XCTAssert(carbohydrates.start == now)
        XCTAssert(carbohydrates.end == now)
        XCTAssert(carbohydrates.unitString == "g")
        XCTAssertNotNil(carbohydrates.hkObject)

        let dietaryFiber = DietaryFiber(quantity: quantity, time: now)
        XCTAssert(DietaryFiber.identifier == .dietaryFiber)
        XCTAssert(dietaryFiber.quantity == quantity)
        XCTAssert(dietaryFiber.time == now)
        XCTAssert(dietaryFiber.start == now)
        XCTAssert(dietaryFiber.end == now)
        XCTAssert(dietaryFiber.unitString == "g")
        XCTAssertNotNil(dietaryFiber.hkObject)

        let sugar = Sugar(quantity: quantity, time: now)
        XCTAssert(Sugar.identifier == .dietarySugar)
        XCTAssert(sugar.quantity == quantity)
        XCTAssert(sugar.time == now)
        XCTAssert(sugar.start == now)
        XCTAssert(sugar.end == now)
        XCTAssert(sugar.unitString == "g")
        XCTAssertNotNil(sugar.hkObject)

        let totalFat = TotalFat(quantity: quantity, time: now)
        XCTAssert(TotalFat.identifier == .dietaryFatTotal)
        XCTAssert(totalFat.quantity == quantity)
        XCTAssert(totalFat.time == now)
        XCTAssert(totalFat.start == now)
        XCTAssert(totalFat.end == now)
        XCTAssert(totalFat.unitString == "g")
        XCTAssertNotNil(totalFat.hkObject)

        let saturatedFat = SaturatedFat(quantity: quantity, time: now)
        XCTAssert(SaturatedFat.identifier == .dietaryFatSaturated)
        XCTAssert(saturatedFat.quantity == quantity)
        XCTAssert(saturatedFat.time == now)
        XCTAssert(saturatedFat.start == now)
        XCTAssert(saturatedFat.end == now)
        XCTAssert(saturatedFat.unitString == "g")
        XCTAssertNotNil(saturatedFat.hkObject)

        let monounsaturatedFat = MonounsaturatedFat(quantity: quantity, time: now)
        XCTAssert(MonounsaturatedFat.identifier == .dietaryFatMonounsaturated)
        XCTAssert(monounsaturatedFat.quantity == quantity)
        XCTAssert(monounsaturatedFat.time == now)
        XCTAssert(monounsaturatedFat.start == now)
        XCTAssert(monounsaturatedFat.end == now)
        XCTAssert(monounsaturatedFat.unitString == "g")
        XCTAssertNotNil(monounsaturatedFat.hkObject)

        let polyunsaturatedFat = PolyunsaturatedFat(quantity: quantity, time: now)
        XCTAssert(PolyunsaturatedFat.identifier == .dietaryFatPolyunsaturated)
        XCTAssert(polyunsaturatedFat.quantity == quantity)
        XCTAssert(polyunsaturatedFat.time == now)
        XCTAssert(polyunsaturatedFat.start == now)
        XCTAssert(polyunsaturatedFat.end == now)
        XCTAssert(polyunsaturatedFat.unitString == "g")
        XCTAssertNotNil(polyunsaturatedFat.hkObject)

        let cholesterol = Cholesterol(quantity: quantity, time: now)
        XCTAssert(Cholesterol.identifier == .dietaryCholesterol)
        XCTAssert(cholesterol.quantity == quantity)
        XCTAssert(cholesterol.time == now)
        XCTAssert(cholesterol.start == now)
        XCTAssert(cholesterol.end == now)
        XCTAssert(cholesterol.unitString == "mg")
        XCTAssertNotNil(cholesterol.hkObject)

        let biotin = Biotin(quantity: quantity, time: now)
        XCTAssert(Biotin.identifier == .dietaryBiotin)
        XCTAssert(biotin.quantity == quantity)
        XCTAssert(biotin.time == now)
        XCTAssert(biotin.start == now)
        XCTAssert(biotin.end == now)
        XCTAssert(biotin.unitString == "mcg")
        XCTAssertNotNil(biotin.hkObject)

        let folate = Folate(quantity: quantity, time: now)
        XCTAssert(Folate.identifier == .dietaryFolate)
        XCTAssert(folate.quantity == quantity)
        XCTAssert(folate.time == now)
        XCTAssert(folate.start == now)
        XCTAssert(folate.end == now)
        XCTAssert(folate.unitString == "mcg")
        XCTAssertNotNil(folate.hkObject)

        let niacin = Niacin(quantity: quantity, time: now)
        XCTAssert(Niacin.identifier == .dietaryNiacin)
        XCTAssert(niacin.quantity == quantity)
        XCTAssert(niacin.time == now)
        XCTAssert(niacin.start == now)
        XCTAssert(niacin.end == now)
        XCTAssert(niacin.unitString == "mg")
        XCTAssertNotNil(niacin.hkObject)

        let pantothenicAcid = PantothenicAcid(quantity: quantity, time: now)
        XCTAssert(PantothenicAcid.identifier == .dietaryPantothenicAcid)
        XCTAssert(pantothenicAcid.quantity == quantity)
        XCTAssert(pantothenicAcid.time == now)
        XCTAssert(pantothenicAcid.start == now)
        XCTAssert(pantothenicAcid.end == now)
        XCTAssert(pantothenicAcid.unitString == "mg")
        XCTAssertNotNil(pantothenicAcid.hkObject)

        let riboflavin = Riboflavin(quantity: quantity, time: now)
        XCTAssert(Riboflavin.identifier == .dietaryRiboflavin)
        XCTAssert(riboflavin.quantity == quantity)
        XCTAssert(riboflavin.time == now)
        XCTAssert(riboflavin.start == now)
        XCTAssert(riboflavin.end == now)
        XCTAssert(riboflavin.unitString == "mg")
        XCTAssertNotNil(riboflavin.hkObject)

        let thiamin = Thiamin(quantity: quantity, time: now)
        XCTAssert(Thiamin.identifier == .dietaryThiamin)
        XCTAssert(thiamin.quantity == quantity)
        XCTAssert(thiamin.time == now)
        XCTAssert(thiamin.start == now)
        XCTAssert(thiamin.end == now)
        XCTAssert(thiamin.unitString == "mg")
        XCTAssertNotNil(thiamin.hkObject)

        let vitaminA = VitaminA(quantity: quantity, time: now)
        XCTAssert(VitaminA.identifier == .dietaryVitaminA)
        XCTAssert(vitaminA.quantity == quantity)
        XCTAssert(vitaminA.time == now)
        XCTAssert(vitaminA.start == now)
        XCTAssert(vitaminA.end == now)
        XCTAssert(vitaminA.unitString == "mcg")
        XCTAssertNotNil(vitaminA.hkObject)

        let vitaminB6 = VitaminB6(quantity: quantity, time: now)
        XCTAssert(VitaminB6.identifier == .dietaryVitaminB6)
        XCTAssert(vitaminB6.quantity == quantity)
        XCTAssert(vitaminB6.time == now)
        XCTAssert(vitaminB6.start == now)
        XCTAssert(vitaminB6.end == now)
        XCTAssert(vitaminB6.unitString == "mg")
        XCTAssertNotNil(vitaminB6.hkObject)

        let vitaminB12 = VitaminB12(quantity: quantity, time: now)
        XCTAssert(VitaminB12.identifier == .dietaryVitaminB12)
        XCTAssert(vitaminB12.quantity == quantity)
        XCTAssert(vitaminB12.time == now)
        XCTAssert(vitaminB12.start == now)
        XCTAssert(vitaminB12.end == now)
        XCTAssert(vitaminB12.unitString == "mcg")
        XCTAssertNotNil(vitaminB12.hkObject)

        let vitaminC = VitaminC(quantity: quantity, time: now)
        XCTAssert(VitaminC.identifier == .dietaryVitaminC)
        XCTAssert(vitaminC.quantity == quantity)
        XCTAssert(vitaminC.time == now)
        XCTAssert(vitaminC.start == now)
        XCTAssert(vitaminC.end == now)
        XCTAssert(vitaminC.unitString == "mg")
        XCTAssertNotNil(vitaminC.hkObject)

        let vitaminD = VitaminD(quantity: quantity, time: now)
        XCTAssert(VitaminD.identifier == .dietaryVitaminD)
        XCTAssert(vitaminD.quantity == quantity)
        XCTAssert(vitaminD.time == now)
        XCTAssert(vitaminD.start == now)
        XCTAssert(vitaminD.end == now)
        XCTAssert(vitaminD.unitString == "mcg")
        XCTAssertNotNil(vitaminD.hkObject)

        let vitaminE = VitaminE(quantity: quantity, time: now)
        XCTAssert(VitaminE.identifier == .dietaryVitaminE)
        XCTAssert(vitaminE.quantity == quantity)
        XCTAssert(vitaminE.time == now)
        XCTAssert(vitaminE.start == now)
        XCTAssert(vitaminE.end == now)
        XCTAssert(vitaminE.unitString == "mg")
        XCTAssertNotNil(vitaminE.hkObject)

        let vitaminK = VitaminK(quantity: quantity, time: now)
        XCTAssert(VitaminK.identifier == .dietaryVitaminK)
        XCTAssert(vitaminK.quantity == quantity)
        XCTAssert(vitaminK.time == now)
        XCTAssert(vitaminK.start == now)
        XCTAssert(vitaminK.end == now)
        XCTAssert(vitaminK.unitString == "mcg")
        XCTAssertNotNil(vitaminK.hkObject)

        let calcium = Calcium(quantity: quantity, time: now)
        XCTAssert(Calcium.identifier == .dietaryCalcium)
        XCTAssert(calcium.quantity == quantity)
        XCTAssert(calcium.time == now)
        XCTAssert(calcium.start == now)
        XCTAssert(calcium.end == now)
        XCTAssert(calcium.unitString == "mg")
        XCTAssertNotNil(calcium.hkObject)

        let chloride = Chloride(quantity: quantity, time: now)
        XCTAssert(Chloride.identifier == .dietaryChloride)
        XCTAssert(chloride.quantity == quantity)
        XCTAssert(chloride.time == now)
        XCTAssert(chloride.start == now)
        XCTAssert(chloride.end == now)
        XCTAssert(chloride.unitString == "mg")
        XCTAssertNotNil(chloride.hkObject)

        let chromium = Chromium(quantity: quantity, time: now)
        XCTAssert(Chromium.identifier == .dietaryChromium)
        XCTAssert(chromium.quantity == quantity)
        XCTAssert(chromium.time == now)
        XCTAssert(chromium.start == now)
        XCTAssert(chromium.end == now)
        XCTAssert(chromium.unitString == "mcg")
        XCTAssertNotNil(chromium.hkObject)

        let copper = Copper(quantity: quantity, time: now)
        XCTAssert(Copper.identifier == .dietaryCopper)
        XCTAssert(copper.quantity == quantity)
        XCTAssert(copper.time == now)
        XCTAssert(copper.start == now)
        XCTAssert(copper.end == now)
        XCTAssert(copper.unitString == "mg")
        XCTAssertNotNil(copper.hkObject)

        let iodine = Iodine(quantity: quantity, time: now)
        XCTAssert(Iodine.identifier == .dietaryIodine)
        XCTAssert(iodine.quantity == quantity)
        XCTAssert(iodine.time == now)
        XCTAssert(iodine.start == now)
        XCTAssert(iodine.end == now)
        XCTAssert(iodine.unitString == "mcg")
        XCTAssertNotNil(iodine.hkObject)

        let iron = Iron(quantity: quantity, time: now)
        XCTAssert(Iron.identifier == .dietaryIron)
        XCTAssert(iron.quantity == quantity)
        XCTAssert(iron.time == now)
        XCTAssert(iron.start == now)
        XCTAssert(iron.end == now)
        XCTAssert(iron.unitString == "mg")
        XCTAssertNotNil(iron.hkObject)

        let magnesium = Magnesium(quantity: quantity, time: now)
        XCTAssert(Magnesium.identifier == .dietaryMagnesium)
        XCTAssert(magnesium.quantity == quantity)
        XCTAssert(magnesium.time == now)
        XCTAssert(magnesium.start == now)
        XCTAssert(magnesium.end == now)
        XCTAssert(magnesium.unitString == "mg")
        XCTAssertNotNil(magnesium.hkObject)

        let manganese = Manganese(quantity: quantity, time: now)
        XCTAssert(Manganese.identifier == .dietaryManganese)
        XCTAssert(manganese.quantity == quantity)
        XCTAssert(manganese.time == now)
        XCTAssert(manganese.start == now)
        XCTAssert(manganese.end == now)
        XCTAssert(manganese.unitString == "mg")
        XCTAssertNotNil(manganese.hkObject)

        let molybdenum = Molybdenum(quantity: quantity, time: now)
        XCTAssert(Molybdenum.identifier == .dietaryMolybdenum)
        XCTAssert(molybdenum.quantity == quantity)
        XCTAssert(molybdenum.time == now)
        XCTAssert(molybdenum.start == now)
        XCTAssert(molybdenum.end == now)
        XCTAssert(molybdenum.unitString == "mcg")
        XCTAssertNotNil(molybdenum.hkObject)

        let phosphorus = Phosphorus(quantity: quantity, time: now)
        XCTAssert(Phosphorus.identifier == .dietaryPhosphorus)
        XCTAssert(phosphorus.quantity == quantity)
        XCTAssert(phosphorus.time == now)
        XCTAssert(phosphorus.start == now)
        XCTAssert(phosphorus.end == now)
        XCTAssert(phosphorus.unitString == "mg")
        XCTAssertNotNil(phosphorus.hkObject)

        let potassium = Potassium(quantity: quantity, time: now)
        XCTAssert(Potassium.identifier == .dietaryPotassium)
        XCTAssert(potassium.quantity == quantity)
        XCTAssert(potassium.time == now)
        XCTAssert(potassium.start == now)
        XCTAssert(potassium.end == now)
        XCTAssert(potassium.unitString == "mg")
        XCTAssertNotNil(potassium.hkObject)

        let selenium = Selenium(quantity: quantity, time: now)
        XCTAssert(Selenium.identifier == .dietarySelenium)
        XCTAssert(selenium.quantity == quantity)
        XCTAssert(selenium.time == now)
        XCTAssert(selenium.start == now)
        XCTAssert(selenium.end == now)
        XCTAssert(selenium.unitString == "mcg")
        XCTAssertNotNil(selenium.hkObject)

        let sodium = Sodium(quantity: quantity, time: now)
        XCTAssert(Sodium.identifier == .dietarySodium)
        XCTAssert(sodium.quantity == quantity)
        XCTAssert(sodium.time == now)
        XCTAssert(sodium.start == now)
        XCTAssert(sodium.end == now)
        XCTAssert(sodium.unitString == "mg")
        XCTAssertNotNil(sodium.hkObject)

        let zinc = Zinc(quantity: quantity, time: now)
        XCTAssert(Zinc.identifier == .dietaryZinc)
        XCTAssert(zinc.quantity == quantity)
        XCTAssert(zinc.time == now)
        XCTAssert(zinc.start == now)
        XCTAssert(zinc.end == now)
        XCTAssert(zinc.unitString == "mg")
        XCTAssertNotNil(zinc.hkObject)

        let caffeine = Caffeine(quantity: quantity, time: now)
        XCTAssert(Caffeine.identifier == .dietaryCaffeine)
        XCTAssert(caffeine.quantity == quantity)
        XCTAssert(caffeine.time == now)
        XCTAssert(caffeine.start == now)
        XCTAssert(caffeine.end == now)
        XCTAssert(caffeine.unitString == "mg")
        XCTAssertNotNil(caffeine.hkObject)
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
    
    func testActivityItems() {
        let step = StepCount(quantity: quantity, time: now)
        XCTAssert(step.quantity == quantity)
        XCTAssert(step.time == now)
        XCTAssert(step.start == now)
        XCTAssert(step.end == now)
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
