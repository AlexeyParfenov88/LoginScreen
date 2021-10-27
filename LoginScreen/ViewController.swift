//
//  ViewController.swift
//  LoginScreen
//
//  Created by Алексей Парфенов on 26.10.2021.
//

import UIKit

let login = "123"
let password = "456"


class ViewController: UIViewController {

    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func forgetUserNameButtonPresser(_ sender: Any) {
            showAlert(title: "OOPS", message: "Your name is \(login)")
    }
    
    
    @IBAction func forgetPasswordButtonPressed(_ sender: Any) {
        showAlert(title: "OOPS", message: "Your password is \(password)")
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        let userName = loginTextField.text ?? ""
        loginTextField.text = userName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController
        else {return}
        welcomeVC.userName = loginTextField.text
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {}
    
}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
