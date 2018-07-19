//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import Foundation
import UIKit
import HealthKit

class DemoViewController: UIViewController {

    let store = HKHealthStore()

    override func viewDidLoad() {
        super.viewDidLoad()

        let sharedTypes: Set<HKSampleType> = [
            HKSampleType.quantityType(forIdentifier: .dietaryEnergyConsumed)!,
            HKSampleType.quantityType(forIdentifier: .dietaryCarbohydrates)!,
            HKSampleType.quantityType(forIdentifier: .bloodPressureDiastolic)!,
            HKSampleType.quantityType(forIdentifier: .bloodPressureSystolic)!,
        ]
        store.requestAuthorization(toShare: sharedTypes, read: sharedTypes) { success, error in
            print("Energy writing status: \(success)")
        }
    }

    @IBAction func write(_ sender: Any) {
        let now = Date()
        let energyType = HKSampleType.quantityType(forIdentifier: .dietaryEnergyConsumed)!
        let energyQuantity = HKQuantity(unit: .gramUnit(with: .none), doubleValue: 50)
        let energy = HKQuantitySample(type: energyType, quantity: energyQuantity, start: now, end: now)
        store.save(energy) { success, error in
            print("Energy writing status: \(success)")
        }

        let carbohydratesType = HKSampleType.quantityType(forIdentifier: .dietaryCarbohydrates)!
        let carbohydratesQuantity = HKQuantity(unit: .gramUnit(with: .none), doubleValue: 10)
        let carbohydrates = HKQuantitySample(type: carbohydratesType, quantity: carbohydratesQuantity, start: now, end: now)
        store.save(carbohydrates) { success, error in
            print("Carbohydrates writing status: \(success)")
        }

        let diastolicType = HKObjectType.quantityType(forIdentifier: .bloodPressureDiastolic)!
        let diastolicQuantity = HKQuantity(unit: .millimeterOfMercury(), doubleValue: 80)
        let diastolic = HKQuantitySample(type: diastolicType, quantity: diastolicQuantity, start: now, end: now)

        let systolicType = HKObjectType.quantityType(forIdentifier: .bloodPressureDiastolic)!
        let systolicQuantity = HKQuantity(unit: .millimeterOfMercury(), doubleValue: 80)
        let systolic = HKQuantitySample(type: systolicType, quantity: systolicQuantity, start: now, end: now)

        let bloodPressureType = HKObjectType.correlationType(forIdentifier: .bloodPressure)!
        let bloodPressure = HKCorrelation(type: bloodPressureType, start: now, end: now, objects: [diastolic, systolic])

        store.save(bloodPressure) { success, error in
            print("Blood Pressure writing status: \(success)")
        }
    }

    @IBAction func read(_ sender: Any) {
        let predicate = HKQuery.predicateForSamples(withStart: nil, end: nil)
        let limit = HKObjectQueryNoLimit
        let sort = [NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: true)]

        let energyType = HKSampleType.quantityType(forIdentifier: .dietaryEnergyConsumed)!
        let energyQuery = HKSampleQuery(sampleType: energyType, predicate: predicate, limit: limit, sortDescriptors: sort) { _, samples, error in
            samples?.forEach { (sample: HKSample) in
                let sample = sample as! HKQuantitySample
                print("Energy: \(sample.startDate), \(sample.quantity.doubleValue(for: .gramUnit(with: .none)))")
            }
        }
        store.execute(energyQuery)

        let carbohydrateType = HKSampleType.quantityType(forIdentifier: .dietaryCarbohydrates)!
        let carbohydrateQuery = HKSampleQuery(sampleType: carbohydrateType, predicate: predicate, limit: limit, sortDescriptors: sort) { _, samples, error in
            samples?.forEach { (sample: HKSample) in
                let sample = sample as! HKQuantitySample
                print("Carbohydrate: \(sample.startDate), \(sample.quantity.doubleValue(for: .gramUnit(with: .none)))")
            }
        }
        store.execute(carbohydrateQuery)

        let bloodPressureType = HKSampleType.correlationType(forIdentifier: .bloodPressure)!
        let bloodPressureQuery = HKSampleQuery(sampleType: bloodPressureType, predicate: predicate, limit: limit, sortDescriptors: sort) { _, samples, error in
            samples?.forEach { (sample: HKSample) in
                let sample = sample as! HKQuantitySample
                print("Blood Pressure: \(sample.startDate), \(sample.quantity.doubleValue(for: .millimeterOfMercury()))")
            }
        }
        store.execute(bloodPressureQuery)
    }
}
