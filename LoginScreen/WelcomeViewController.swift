//
//  WelcomeViewController.swift
//  LoginScreen
//
//  Created by Алексей Парфенов on 27.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var greetingsText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
}
