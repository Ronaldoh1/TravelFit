//
//  CustomTabBarController.swift
//  TravelFit
//
//  Created by Ronald Hernandez on 12/18/16.
//  Copyright © 2016 TravelFit. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let mapViewController = MapViewController()
        mapViewController.tabBarItem.title = "Gyms"

        let passPurchaseViewController = PassPurchaseViewController()
        passPurchaseViewController.title = "Purchase"

        let paymentSummaryViewController = PaymentSummaryViewController()
        paymentSummaryViewController.title = "Summary"

        let profileSettingsViewController = ProfileSettingsViewController()
        profileSettingsViewController.title = "Profile"

        viewControllers = [mapViewController, passPurchaseViewController, paymentSummaryViewController, profileSettingsViewController]

    }

}

// MARK - TODO: 
// add tab bar icons.
