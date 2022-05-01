//
//  LogOutViewController.swift
//  LogIn
//
//  Created by Vladimir Dvornikov on 05.04.2022.
//

import UIKit

class LogOutViewController: UIViewController {

    @IBOutlet var userImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    
    var currentUser: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = currentUser.person.name + " " + currentUser.person.surname
        professionLabel.text = currentUser.person.profession
        
        userImage.layer.borderWidth = 2
        userImage.layer.borderColor = UIColor.white.cgColor
    }
       
    override func viewWillLayoutSubviews() {
        userImage.layer.cornerRadius = userImage.frame.width / 2
        
    }
    
}


        
