//
//  MainTabBarViewController.swift
//  LoginScreen
//
//  Created by Алексей Парфенов on 30.10.2021.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    var name: String?
    var surname: String?
    var phoneNumber: String?
    var bio: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let viewControllers = viewControllers else { return }
//        guard let viewcontrollers = viewControllers else {return}
        
        for viewController in viewControllers {
            if let welcomeViewController = viewController as? WelcomeViewController {
                welcomeViewController.name = name
                welcomeViewController.surname = surname
            } else if let infoNavigationController = viewController
                        as? UINavigationController {
                let infoViewController = infoNavigationController.topViewController
                    as! InfoViewController
                infoViewController.name = name
                infoViewController.surname = surname
                infoViewController.phoneNumber = phoneNumber
                infoViewController.bio = bio
            }
        }
        
    }
   
}
