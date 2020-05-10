//
//  ViewController.swift
//  Siri-Intents-Example
//
//  Created by Peter dot Dell on 5/9/20.
//  Copyright © 2020 GeekGaps.com. All rights reserved.
//

import UIKit

//com.geekgaps.Siri.Siri-Intents-Example
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var OrderLbl: UILabel!
    
    @IBAction func OrderBigMacPlus(_ sender: Any) {
        print("Order BigMac Plus")
        let activity = NSUserActivity(activityType: "com.geekgaps.Siri.Siri-Intents-Example.OrderBigMacPlus")
        activity.title = "Order BigMac, Fries, and Coke"
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        self.userActivity = activity
        self.userActivity?.becomeCurrent()
    }
}

