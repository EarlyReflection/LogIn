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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logOutVC = segue.destination as? LogOutViewController else {return} // скастил logOutVC до LogOutViewController, извлек опционал с помощью guard let
        logOutVC.greeting = "Hello, \(userNameTextField.text ?? "")!"
    }
    
    @IBAction func forgotUserNamePressed() {
    }
    
    @IBAction func forgotPasswordPressed() {
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
    }
}


