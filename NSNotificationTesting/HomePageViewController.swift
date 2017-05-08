//
//  HomePageViewController.swift
//  NSNotificationTesting
//
//  Created by parulsha on 08/05/17.
//  Copyright © 2017 parulsha. All rights reserved.
//

import Foundation
import UIKit

let mySpecialNotificationKey = "com.andrewcbancroft.specialNotificationKey"

class HomePageViewController: UIViewController {
    @IBOutlet weak var acknowledgementLabel: UILabel!

    override func viewDidLoad() {
     super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(HomePageViewController.notify), name: NSNotification.Name(rawValue:mySpecialNotificationKey), object: nil)
    }

    @IBAction func notifyButtonClicked(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: mySpecialNotificationKey), object: nil)
    }

    func notify() {
        self.acknowledgementLabel.text = "I have done my job by notifying others!"
        tabBarController?.tabBar.items?[1].badgeValue = "Received"
        tabBarController?.tabBar.items?.last?.badgeValue = "Received"
        
    }

}
