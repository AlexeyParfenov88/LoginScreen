//
//  ViewController.swift
//  LoginScreen
//
//  Created by Алексей Парфенов on 26.10.2021.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let userName = "User"
    private let password = "Password"
    
    @IBAction func forgetUserNameButtonPresser(_ sender: Any) {
        showAlert(title: "OOPS", message: "Your name is \(userName)")
    }
    
    
    @IBAction func forgetPasswordButtonPressed(_ sender: Any) {
        showAlert(title: "OOPS", message: "Your password is \(password)")
    }
    
    @IBAction func loginButtonPressed() {
        if loginTextField.text != userName || passwordTextField.text != password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController
        else {return}
        welcomeVC.userName = userName
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}

extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension ViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginButtonPressed()
            performSegue(withIdentifier: "showWelcomeVc", sender: nil)
        }
        return true
    }
}
