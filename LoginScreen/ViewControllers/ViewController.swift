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
    
    private let user = User()
    
    @IBAction func forgetUserNameButtonPresser(_ sender: Any) {
        showAlert(title: "OOPS", message: "Your name is \(user.username)")
    }
    
    
    @IBAction func forgetPasswordButtonPressed(_ sender: Any) {
        showAlert(title: "OOPS", message: "Your password is \(user.password)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let mainTabBarViewController = segue.destination as? MainTabBarViewController else { return }
        mainTabBarViewController.name = user.personalInfo.name
        mainTabBarViewController.surname = user.personalInfo.surname
        mainTabBarViewController.phoneNumber = user.personalInfo.phoneNumber
        mainTabBarViewController.bio = user.personalInfo.shortBio
        
    }
    
    
    @IBAction func loginButtonPressed() {
        if loginTextField.text != user.username || passwordTextField.text != user.password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
            passwordTextField.text = ""
        }
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
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}
