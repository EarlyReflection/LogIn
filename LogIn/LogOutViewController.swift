//
//  LogOutViewController.swift
//  LogIn
//
//  Created by Vladimir Dvornikov on 05.04.2022.
//

import UIKit

class LogOutViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        greetingLabel.text = greeting
    }
    
}
