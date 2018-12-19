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
        let energy = EnergyIntake(value: 10, time: DateInterval(start: Date(), duration: 10000))
        store.energyStore.write(energy) { success, error in
            print(success)
        }
        
        let bleeding = IntermenstrualBleeding(time: Date())
        store.intermenstrualBleedingStore.write(bleeding) { success, error in
            print(success)
        }

        let mindful = MindfulTime(time: DateInterval(start: Date(), duration: 300))
        store.mindfulTime.write(mindful) { success, error in
            print(success)
        }

        let sleep = SleepAnalysis(value: .asleep, time: DateInterval(start: Date(), duration: 200))
        store.sleepAnalysis.write(sleep) { success, error in
            print(success)
        }

        let pressure = BloodPressure(diastolic: 80, systolic: 100, time: Date())
        store.bloodPressure.write(pressure) { success, error in
            print(success)
        }

        let push = WheelchairPushCount(value: 10, time: Date())
        store.wheelchairPushCount.write(push) { success, error in
            print(success)
        }

        let vo2max = VO2Max(value: 10, time: Date())
        store.vo2max.write(vo2max) { success, error in
            print(success)
        }

        let sexual = SexualActivity(time: Date(), option: .notUsed)
        store.sexualActivity.write(sexual) { success, error in
            print(success)
        }

        let content = BloodAlcoholContent(value: 0.001, time: Date())
        store.bloodAlcoholContent.write(content) { success, error in
            print(success)
        }

        let glucose = BloodGlucose(value: 1, time: Date())
        store.bloodGlucose.write(glucose) { success, error in
            print(success)
        }
    }
    
    @IBAction func read(_ sender: Any) {
        store.energyStore.read(start: nil, end: nil, limit: nil) { items, error in
            print(items)
        }
    }
}
