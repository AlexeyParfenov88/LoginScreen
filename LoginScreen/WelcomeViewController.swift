//
//  WelcomeViewController.swift
//  LoginScreen
//
//  Created by Алексей Парфенов on 27.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var greetingsText: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsText.text = "Hello there" + " " + userName

    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
}
