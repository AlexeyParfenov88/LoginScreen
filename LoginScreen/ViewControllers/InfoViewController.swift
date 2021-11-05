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
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        phoneNumberLabel.text = user.person.phoneNumber
        bioLabel.text = user.person.shortBio

    }
 

}
