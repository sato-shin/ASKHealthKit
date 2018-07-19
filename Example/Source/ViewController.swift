//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import UIKit
import ASKHealthKit

class ViewController: UIViewController {
    
    let store = MyHealthStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.requestAuthorization { success, error in
            print("Energy writing status: \(success)")
        }
    }
    
    @IBAction func write(_ sender: Any) {
        let now = Date()

        let energy = Energy(quantity: 50, time: now)
        store.energyStore.write(energy) { success, error in
            print("Energy writing status: \(success)")
        }

        let carbohydrates = Carbohydrates(quantity: 10, time: now)
        store.carbohydrateStore.write(carbohydrates) { success, error in
            print("Carbohydrate writing status: \(success)")
        }

        let bloodPressure = BloodPressure(diastolic: 80, systolic: 120, time: now)
        store.bloodPressureStore.write(bloodPressure) { success, error in
            print("Blood Pressure writing status: \(success)")
        }
    }
    
    @IBAction func read(_ sender: Any) {
        store.energyStore.readAll { items, error in
            items.forEach { i in
                print("Energy: \(i.time), \(i.quantity)")
            }
        }

        store.carbohydrateStore.readAll { items, error in
            items.forEach { i in
                print("Carbohydrate: \(i.time), \(i.quantity)")
            }
        }

        store.bloodPressureStore.readAll { items, error in
            items.forEach { i in
                print("Blood Pressure Diastolic: \(i.time), \(i.diastolic.value)")
                print("Blood Pressure Systolic : \(i.time), \(i.systolic.value)")
            }
        }
    }
}
