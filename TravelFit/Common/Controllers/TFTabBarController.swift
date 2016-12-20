//
//  TFTabBarController.swift
//  TravelFit
//
//  Created by Ronald Hernandez on 12/18/16.
//  Copyright © 2016 TravelFit. All rights reserved.
//

import UIKit

class TFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let mapViewController = TFMapViewController()
        mapViewController.tabBarItem.title = "Gyms"

        let passPurchaseViewController = TFPassPurchaseViewController()
        passPurchaseViewController.title = "Purchase"

        let paymentSummaryViewController = TFPaymentSummaryViewController()
        paymentSummaryViewController.title = "Summary"

        let profileSettingsViewController = TFSettingsViewController()
        profileSettingsViewController.title = "Profile"

        viewControllers = [mapViewController, passPurchaseViewController, paymentSummaryViewController, profileSettingsViewController]
    }
    
}
