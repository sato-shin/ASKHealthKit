//
//  ViewController.swift
//  Example
//
//  Created by sato-shin on 2018/07/13.
//  Copyright © 2018年 com.askendiet. All rights reserved.
//

import UIKit
import ASKHealthKit

class ViewController: UIViewController {
    
    let store = MyHealthStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let store = MyHealthStore()
        store.requestAuthorization { b, error in  }
    }
    
    @IBAction func write(_ sender: Any) {
        let now = Date()
        store.energyStore.write(Energy(quantity: 50, time: now)) { success, error in
            print("Energy writing status: \(success)")
        }
        store.carbohydrateStore.write(Carbohydrate(quantity: 10, time: now)) { success, error in
            print("Carbohydrate writing status: \(success)")
        }
    }
    
    @IBAction func read(_ sender: Any) {
        store.energyStore.readAll { items, error in
            items.forEach { i in
                print("\(i.time), \(i.quantity)")
            }
        }
    }
}

class MyHealthStore: ASKHealthStore {
    let energyStore = HealthItemStore<Energy>(sharing: .rw)
    let carbohydrateStore = HealthItemStore<Carbohydrate>(sharing: .rw)
    let waterStore = HealthItemStore<Water>(sharing: .rw)
    
    let stepCountStore = HealthItemStore<StepCount>(sharing: .rw)
    let swimmingDistanceStore = HealthItemStore<SwimmingDistance>(sharing: .rw)
    let cyclingDistanceStore = HealthItemStore<CyclingDistance>(sharing: .rw)
    let workoutStore = HealthItemStore<Workout>(sharing: .rw)
    
    let uvExposureStore = HealthItemStore<UVExposure>(sharing: .rw)
    let insulinDeliveryStore = HealthItemStore<InsulinDelivery>(sharing: .rw)
    
    let intermenstrualBleedingStore = HealthItemStore<IntermenstrualBleeding>(sharing: .rw)
    
    // TODO: blood pressure で同時に扱えるようにする
    //    let bloodPressure = HealthItemStore<BloodPressure>(sharing: .rw)
    let bloodPressureDiastolicStore = HealthItemStore<BloodPressureDiastolic>(sharing: .rw)
    let bloodPressureSystolicStore = HealthItemStore<BloodPressureSystolic>(sharing: .rw)
    
    let mindfulTimeStore = HealthItemStore<MindfulTime>(sharing: .rw)
    
    let sleepAnalysisStore = HealthItemStore<SleepAnalysis>(sharing: .rw)
}
