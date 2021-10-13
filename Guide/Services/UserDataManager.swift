//
//  UserDataManager.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

protocol UserDataManagerProtocol {
    func fetchUser(completion: (User) -> Void)
}

final class UserDataManager: UserDataManagerProtocol {
    func fetchUser(completion: (User) -> Void) {
        completion(users[userID])
    }
}
