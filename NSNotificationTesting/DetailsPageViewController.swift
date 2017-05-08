//
//  DetailsPageViewController.swift
//  NSNotificationTesting
//
//  Created by parulsha on 08/05/17.
//  Copyright © 2017 parulsha. All rights reserved.
//

import Foundation
import UIKit

class DetailsPageViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(DetailsPageViewController.handleTheNotification), name: NSNotification.Name(rawValue:mySpecialNotificationKey ), object: nil)
    }

    func handleTheNotification() {
        messageLabel.text = "I also got the notification"
        //tabBarController?.tabBar.items?.last?.badgeValue = "Received"
    }
}
