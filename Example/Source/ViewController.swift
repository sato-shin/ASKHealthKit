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

        store.requestAuthorization { success, error in
            print("Energy writing status: \(success)")
        }
    }
    
    @IBAction func write(_ sender: Any) {
        let energy = EnergyIntake(value: 10, time: Date())
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
        store.energyStore.read(start: nil, end: nil, limit: 0) { item, _ in
            print(item)
        }

        store.intermenstrualBleedingStore.read(start: nil, end: nil, limit: 0) { item, _ in
            print(item)
        }

        store.mindfulTime.read(start: nil, end: nil, limit: 0) { item, _ in
            print(item)
        }

        store.sleepAnalysis.read(start: nil, end: nil, limit: 0) { item, _ in
            print(item)
        }

        store.wheelchairPushCount.read(start: nil, end: nil, limit: 0) { item, _ in
            print(item)
        }

        store.vo2max.read(start: nil, end: nil, limit: 0) { item, _ in
            print(item)
        }

        store.sexualActivity.read(start: nil, end: nil, limit: 0) { item, _ in
            print(item)
        }

        store.bloodAlcoholContent.read(start: nil, end: nil, limit: 0) { item, _ in
            print(item)
        }

        store.bloodGlucose.read(start: nil, end: nil, limit: 0) { item, _ in
            print(item)
        }
    }
}
