//
//  User.swift
//  LoginScreen
//
//  Created by Алексей Парфенов on 31.10.2021.
//

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            username: "1",
            password: "2",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let shortBio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Alex", surname: "Parfenov", phoneNumber: "+7999*****52", shortBio: "Постигаю азы программирования под IOS")
    }
}
