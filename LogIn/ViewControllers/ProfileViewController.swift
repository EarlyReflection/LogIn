//
//  ProfileViewController.swift
//  LogIn
//
//  Created by Vladimir Dvornikov on 28.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var age: UILabel!
    @IBOutlet var city: UILabel!
    @IBOutlet var profession: UILabel!
    @IBOutlet var hobby: UILabel!
    
    var currentUser: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = currentUser.person.name
        surname.text = currentUser.person.surname
        age.text = String(currentUser.person.age)
        city.text = currentUser.person.city
        profession.text = currentUser.person.profession
        hobby.text = currentUser.person.hobby
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactViewController else {return}
        contactVC.currentUser = currentUser
    }

}
