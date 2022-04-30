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
    let name: String
    let surname : String
    let age: Int
    let city: String
    let adress: String
    let phone: String
    let emale: String
    let hobby: String
    let image: String
    let profession: String
    
    static func getPerson() -> Person {
        Person(
            name: "Vladimir",
            surname: "Dvornikov",
            age: 39,
            city: "Moscow",
            adress: "Olkhovskaya str. 14",
            phone: "+7 (929) 938-49-64",
            emale: "vladimirdvirnikof@gmail.com",
            hobby: "Music",
            image: "",
            profession: "Video editor and motion graphics designer"
        )
    }
}
 
