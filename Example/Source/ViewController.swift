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
        let energy = Energy(value: 0, time: Date())
        let bleeding = IntermenstrualBleeding(time: Date())
    }
    
    @IBAction func read(_ sender: Any) {
    }
}
