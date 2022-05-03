//
//  ContactViewController.swift
//  LogIn
//
//  Created by Vladimir Dvornikov on 30.04.2022.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet var fullName: UILabel!
    @IBOutlet var adress: UILabel!
    @IBOutlet var email: UILabel!
    @IBOutlet var phone: UILabel!
    
    var currentUser: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullName.text = currentUser.person.fullName
        adress.text = currentUser.person.city + ", " + currentUser.person.adress
        email.text = currentUser.person.email
        phone.text = currentUser.person.phone
    }
    

 

}
