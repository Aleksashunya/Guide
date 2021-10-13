//
//  SettingsUserView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct SettingsUserView: View {
    @Binding var meaning: String
    @State private var userData = currentUser
    
    var body: some View {
        Section(header: Text("Данные пользователя")) {
            ClientInfoRowView<ChangeDataScreen, Any>(labelText: "Имя",
                                                     meaningText: "\(userData.name)") {
                ChangeDataScreen(category: "Имя",
                                 meaning: $userData.name, data: userData.name)}
            
            ClientInfoRowView<ChangeDataScreen, Any>(labelText: "Фамилия",
                                                     meaningText: "\(userData.lastName)") {
                ChangeDataScreen(category: "Фамилия",
                                 meaning: $userData.lastName, data: userData.lastName)}
            
            ClientInfoRowView<ChangeDataScreen, Any>(labelText: "Телефон",
                                                     meaningText: "\(userData.mobile)") {
                ChangeDataScreen(category: "Телефон",
                                 meaning: $userData.mobile, data: userData.mobile)}
            
            ClientInfoRowView<ChangeDataScreen, Any>(labelText: "Электронная почта",
                                                     meaningText: "\(userData.email)") {
                ChangeDataScreen(category: "Электронная почта",
                                 meaning: $userData.email, data: userData.email)}
            
            ClientInfoRowView<ChangeDataScreen, Any>(labelText: "Логин",
                                                     meaningText: "\(userData.login)") {
                ChangeDataScreen(category: "Логин",
                                 meaning: $userData.login, data: userData.login)}
            
            ClientInfoRowView<ChangeDataScreen, Any>(labelText: "Пароль",
                                                     meaningText: "\(userData.password)") {
                ChangeDataScreen(category: "Пароль",
                                 meaning: $userData.password, data: userData.password)}
        }
        .onDisappear(perform: {
            users[userID].name = userData.name
            users[userID].email = userData.email
        })
    }
}

struct SettingsUserView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsUserView(meaning: .constant(""))
    }
}
