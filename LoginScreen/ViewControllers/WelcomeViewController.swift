//
//  WelcomeViewController.swift
//  LoginScreen
//
//  Created by Алексей Парфенов on 27.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var greetingsText: UILabel!
    
    var name: String?
    var surname: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsText.text = "Welcome, \(name ?? "Unresolved") \(surname ?? "Unresolved")!"

    }
}
