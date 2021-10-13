//
//  UserRepository.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import Foundation

protocol UserRepositoryProtocol {
    func fetchUser(completion: (User) -> Void)
}

final class UserRepository: UserRepositoryProtocol {
    private var dataManager: UserDataManagerProtocol
    
    init(dataManager: UserDataManagerProtocol = UserDataManager()) {
        self.dataManager = dataManager
    }
    
    func fetchUser(completion: (User) -> Void) {
        dataManager.fetchUser(completion: completion)
    }
    
    
}
