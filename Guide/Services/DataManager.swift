//
//  DataManager.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import Foundation

// MARK: DataManager для работы с UserDefaults

class DataManager {
    static let shared = DataManager()
    
    private let userDefaults = UserDefaults()
    
    private init() {}
    
    // MARK: Статус сохраняемый для того, чтобы при открытии приложения, автоматически пропускался экран логина если уже осуществлен вход
    
    func saveLoginStatus(with status: Bool) {
        userDefaults.set(status, forKey: "logIn")
    }
    
    func loadLoginStatus() -> Bool {
        userDefaults.bool(forKey: "logIn")
    }
    
    // MARK: Сохраняется информация о пользователе, который совершил вход
    
    func saveUserID(with id: Double) {
        userDefaults.set(id, forKey: "userID")
    }
    
    func loadUserID() -> Double {
        userDefaults.double(forKey: "userID")
    }
}
