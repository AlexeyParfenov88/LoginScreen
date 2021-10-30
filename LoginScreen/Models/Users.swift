//
//  Users.swift
//  LoginScreen
//
//  Created by Алексей Парфенов on 30.10.2021.
//

import Foundation

struct User {
    let username = "User"
    let password = "Password"
    let personalInfo = Person()
}

struct Person {
    let name = "Roman"
    let surname = "Romanov"
    let phoneNumber = "+79001234567"
    let shortBio = """
    Я родился и вырос. Окончил школу и университет. Сейчас учусь на курсах \
    Swiftbook, чтобы стать iOS-разработчиком.
    """
}
