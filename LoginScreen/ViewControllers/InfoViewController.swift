//
//  InfoViewController.swift
//  LoginScreen
//
//  Created by Алексей Парфенов on 30.10.2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var bioLabel: UILabel!
    
    
    
    var name: String?
    var surname: String?
    var phoneNumber: String?
    var bio: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
        surnameLabel.text = surname
        phoneNumberLabel.text = phoneNumber
        bioLabel.text = bio

    }
 

}
