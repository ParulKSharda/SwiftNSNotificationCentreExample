//
//  AboutUsViewController.swift
//  NSNotificationTesting
//
//  Created by parulsha on 08/05/17.
//  Copyright © 2017 parulsha. All rights reserved.
//

import Foundation
import UIKit


class AboutUsViewController: UIViewController {

    @IBOutlet weak var message: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(AboutUsViewController.handleTheNotification), name:NSNotification.Name(rawValue:mySpecialNotificationKey), object: nil)
    }

    func handleTheNotification() {
        self.message.text = "I got the notification"
        tabBarController?.tabBar.items?[1].badgeValue = nil
    }
}

