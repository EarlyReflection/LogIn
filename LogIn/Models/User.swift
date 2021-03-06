//
//  User.swift
//  LogIn
//
//  Created by Vladimir Dvornikov on 23.04.2022.
//


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "user", password: "password", person: Person.getPerson())
        
    }
}

struct Person {
    let avatar: String
    let name: String
    let surname : String
    let age: Int
    let city: String
    let adress: String
    let phone: String
    let email: String
    let hobby: String
    let profession: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            avatar: "myPhoto",
            name: "Vladimir",
            surname: "Dvornikov",
            age: 39,
            city: "Moscow",
            adress: "Voljskiy bulvar str. 16",
            phone: "+7 (929) 938-49-64",
            email: "vladimirdvirnikof@gmail.com",
            hobby: "Music",
            profession: "Video edit, motion graphics design"
        )
    }
}
 
