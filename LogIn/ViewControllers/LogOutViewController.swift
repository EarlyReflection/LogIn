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
    
    var userName: String!
    var userProfession: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = userName
        professionLabel.text = userProfession
        
        userImage.layer.borderWidth = 2
        userImage.layer.borderColor = UIColor.white.cgColor
    }
   
    override func viewWillLayoutSubviews() {
        userImage.layer.cornerRadius = userImage.frame.width / 2
        
    }
    
}
    
