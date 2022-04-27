//
//  ViewController.swift
//  LogIn
//
//  Created by Vladimir Dvornikov on 04.04.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let currentUser = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logOutVC = segue.destination as? LogOutViewController else {return}
        logOutVC.userName = currentUser.person.name + " " + currentUser.person.surname
        logOutVC.userProfession = currentUser.person.profession
    }
    
    @IBAction func logInPressed() {
//        if  userNameTextField.text != currentUser.login || passwordTextField.text != currentUser.password {
//            showAlert(
//                with: "Invalid login or password",
//                and: "Enter correct login and password"
//            )
//            passwordTextField.text = ""
//        }
    }
    
    @IBAction func forgotPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            userNameTextField.text = ""
            showAlert(with: "Ooops!", and: " Your name is: \(currentUser.login)")
            
        } else {
            showAlert(with: "Ooops!", and: " Your password is: \(currentUser.password)")
            passwordTextField.text = ""
        }
        
    }
    
    @IBAction func unwindToLogin(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}



// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - UITextfieldDelegate
extension LoginViewController: UITextFieldDelegate {
    //метод для скрытия и показа клавиатуры по нажатию за ее пределами
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    //метод вызывает мигающий курсор и отвечает за его перемещение в соседнее текстовое поле,
    //в ветке else срабатывает переход на второй экран по нажатию кнопки return на клавиатуре телефона
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInPressed()
            performSegue(withIdentifier: "showGreeting", sender: nil)
        }
        return true
    }
}
