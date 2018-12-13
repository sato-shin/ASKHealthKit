//
// Copyright (c) 2018 Asken Inc. All rights reserved.
//

import UIKit
import ASKHealthKit

class ViewController: UIViewController {
    
    let store = HealthStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.requestAuthorization { success, error in
            print("Energy writing status: \(success)")
        }
    }
    
    @IBAction func write(_ sender: Any) {
        let energy = EnergyIntake(value: 10, time: Date())
        store.energyStore.write([energy]) { success, error in
            print(success)
        }
        
        let bleeding = IntermenstrualBleeding(time: Date())
        store.intermenstrualBleedingStore.write([bleeding]) { success, error in
            print(success)
        }

        let mindful = MindfulTime(time: DateInterval(start: Date(), duration: 300))
        store.mindfulTime.write([mindful]) { success, error in
            print(success)
        }

        let sleep = SleepAnalysis(value: .asleep, time: DateInterval(start: Date(), duration: 200))
        store.sleepAnalysis.write([sleep]) { success, error in
            print(success)
        }

        let bloodPressure = BloodPressure(diastolic: 80, systolic: 100, time: Date())
        store.bloodPressure.write([bloodPressure]) { success, error in
            print(success)
        }
    }
    
    @IBAction func read(_ sender: Any) {
        store.sleepAnalysis.read(start: nil, end: nil, limit: nil) { items, error in
            print(items)
        }
        store.bloodPressure.read(start: nil, end: nil, limit: nil) { items, error in
            print(items)
        }
    }
}
