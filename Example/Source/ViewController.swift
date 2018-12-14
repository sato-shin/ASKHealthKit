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
        store.energyStore.write(EnergyIntake(value: 10, time: Date())) { success, error in
            print(success)
        }
        
        store.intermenstrualBleedingStore.write(IntermenstrualBleeding(time: Date())) { success, error in
            print(success)
        }

        store.mindfulTime.write(MindfulTime(time: DateInterval(start: Date(), duration: 300))) { success, error in
            print(success)
        }

        store.sleepAnalysis.write(SleepAnalysis(value: .asleep, time: DateInterval(start: Date(), duration: 200))) { success, error in
            print(success)
        }

        store.bloodPressure.write(BloodPressure(diastolic: 80, systolic: 100, time: Date())) { success, error in
            print(success)
        }

        store.wheelchairPushCount.write(WheelchairPushCount(value: 10, time: Date())) { success, error in
            print(success)
        }

        store.vo2max.write(VO2Max(value: 10, time: Date())) { success, error in
            print(success)
        }

        store.sexualActivity.write(SexualActivity(time: Date())) { success, error in
            print(success)
        }
    }
    
    @IBAction func read(_ sender: Any) {
        store.appleStandHour.read(start: nil, end: nil, limit: nil) { items, error in
            print(items)
        }
    }
}
