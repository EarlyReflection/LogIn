//
//  LogOutViewController.swift
//  LogIn
//
//  Created by Vladimir Dvornikov on 05.04.2022.
//

import UIKit

class LogOutViewController: UIViewController {

    @IBOutlet var userImage: UIImageView! {
        didSet {
            userImage.layer.cornerRadius = userImage.frame.width / 2
        }
    }
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    
    var currentUser: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = currentUser.person.fullName
        professionLabel.text = currentUser.person.profession
        
        userImage.image = UIImage(named: currentUser.person.avatar)
        userImage.layer.borderWidth = 2
        userImage.layer.borderColor = UIColor.white.cgColor
    }
}


        
