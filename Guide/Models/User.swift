//
//  User.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

struct User: Identifiable {
    var name: String
    var lastName: String
    var mobile: String
    var email: String
    var login: String
    var password: String
    var id: Int
    var clients: [Client]?
    var tasks: [Task]?
    var events: [Event]?
    
    var fullName: String {
        return "\(name) \(lastName)"
    }
}

