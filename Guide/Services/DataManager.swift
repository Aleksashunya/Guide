//
//  DataManager.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private let userDefaults = UserDefaults()
    
    func saveLoginStatus(with status: Bool) {
        userDefaults.set(status, forKey: "logIn")
    }
    
    func loadLoginStatus() -> Bool {
        userDefaults.bool(forKey: "logIn")
    }
    
    func saveUserID(with id: Double) {
        userDefaults.set(id, forKey: "userID")
    }
    
    func loadUserID() -> Double {
        userDefaults.double(forKey: "userID")
    }
}
