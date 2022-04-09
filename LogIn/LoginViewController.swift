//
//  ViewController.swift
//  LogIn
//
//  Created by Vladimir Dvornikov on 04.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let username = "qwerty"
    private let password = "12345"
    
    // prepare - передает данные из LoginViewController в LogOutViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logOutVC = segue.destination as? LogOutViewController else {return}
        logOutVC.greeting = "Hello, \(username)!"
    }
    
    @IBAction func logInPressed() {
        if  userNameTextField.text != username || passwordTextField.text != password {
            showAlert(
                with: "Invalid login or password",
                and: "Enter correct login and password"
            )
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(with: "Ooops!", and: " Your name is: \(username)")
        userNameTextField.text = ""
        
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Ooops!", and: " Your password is: \(password)")
        passwordTextField.text = ""
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}


// MARK: - Alert Controller
extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}



