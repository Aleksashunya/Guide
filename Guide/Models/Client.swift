//
//  Client.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

struct Client: Hashable, Identifiable {
    var name: String
    var lastName: String
    var mobile: String
    var email: String?
    var id: Int
    
    var fullName: String {
        return "\(name) \(lastName)"
    }
}
