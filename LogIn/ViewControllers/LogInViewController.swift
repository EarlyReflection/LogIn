//
//  ViewController.swift
//  LogIn
//
//  Created by Vladimir Dvornikov on 04.04.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField! {
        didSet {
            // меняет текст и цвет paceholder
            let placeholderText = NSAttributedString(
                string: "user",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
            )
            userNameTextField.attributedPlaceholder = placeholderText
        }
    }
    @IBOutlet var passwordTextField: UITextField! {
        didSet{
            let placeholderText = NSAttributedString(
                string: "password",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
            )
            passwordTextField.attributedPlaceholder = placeholderText
        }
    }
    
    private let currentUser = User.getUser()
    
    override func viewDidLoad() {
        userNameTextField.textColor = UIColor.black
        passwordTextField.textColor = UIColor.black`
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBar = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBar.viewControllers else {return}
        
        // доступ к VC в таббаре, в ветке else if к VC в навигейшн контроллере
        for viewController in viewControllers {
            if let logOutVC = viewController as? LogOutViewController {
                logOutVC.currentUser = currentUser
            } else if let navigationVC = viewController as? UINavigationController {
                let profileVC = navigationVC.topViewController as! ProfileViewController
                profileVC.currentUser = currentUser
            }
        }
    }
    
    @IBAction func logInPressed() {
        if  userNameTextField.text != currentUser.login || passwordTextField.text != currentUser.password {
            showAlert(
                with: "Invalid login or password",
                and: "Enter correct login and password"
            )
            passwordTextField.text = ""
        }
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

