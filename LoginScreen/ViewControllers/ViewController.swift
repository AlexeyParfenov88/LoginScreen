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
        showAlert(title: "OOPS", message: "Your name is \(user.userName)")
    }
    
    
    @IBAction func forgetPasswordButtonPressed(_ sender: Any) {
        showAlert(title: "OOPS", message: "Your password is \(user.password)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let mainTabBarController = segue.destination as? MainTabBarViewController {
            mainTabBarController.name = user.personalInfo.name
            mainTabBarController.surname = user.personalInfo.surname
            mainTabBarController.phoneNumber = user.personalInfo.phoneNumber
            mainTabBarController.bio = user.personalInfo.shortBio
        }
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        if loginTextField.text != user.userName || passwordTextField.text != user.password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
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

//extension ViewController: UITextFieldDelegate {
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        view.endEditing(true)
//    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == loginTextField {
//            passwordTextField.becomeFirstResponder()
//        } else {
//            loginButtonPressed()
//            performSegue(withIdentifier: "showWelcomeVc", sender: nil)
//        }
//        return true
//    }
//}
