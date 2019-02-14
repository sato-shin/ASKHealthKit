//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import UIKit
import HealthKit
import ASKHealthKit

class ViewController: UIViewController {
    
    let store = MyHealthStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(store.energyStore.canWrite)

        store.requestAuthorization { success, error in
            print("Energy writing status: \(success)")
        }

        print(store.authorizationStatus)
    }
    
    @IBAction func write(_ sender: Any) {
        let energy = EnergyIntake(value: 10, time: Date(), metadata: ["Meal": "lunch"])
        store.energyStore.write(energy) { success, error in
            print(success)
        }

        let hoge: [HealthItem] = [
            EnergyIntake(value: 10, time: Date()),
            Protein(value: 10, time: Date())
        ]
        store.write(hoge) { success, error in
            print(success)
        }
    }
    
    @IBAction func read(_ sender: Any) {
        store.energyStore.read(start: nil, end: nil, limit: 0) { item, _ in
            print(item)
        }
    }
}
