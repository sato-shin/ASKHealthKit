//
// Copyright (c) 2018 Asken Inc. All rights reserved.
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
        store.carbohydrateStore.write(Carbohydrates(quantity: 10, time: now)) { success, error in
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
