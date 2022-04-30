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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBar = segue.destination as? UITabBarController else {return}
//        guard let viewControllers = tabBar.viewControllers else {return}
     
//        for viewController in viewControllers {
//            guard let navigationVC = viewController as? UINavigationController else {return}
//            guard let profileVC = navigationVC.topViewController as? ProfileViewController else {return}
//            profileVC.currentUser = currentUser
        
    }
   
    override func viewWillLayoutSubviews() {
        userImage.layer.cornerRadius = userImage.frame.width / 2
        
    }
    
}


        
