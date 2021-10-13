//
//  RegistrationNextButtonView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct RegistrationNextButtonView: View {
    @Binding var logIn: Bool
    @Binding var screen: Int
    
    @Binding var userName: String
    @Binding var userLastName: String
    @Binding var userMobile: String
    @Binding var userLogin: String
    @Binding var userPassword: String
    @Binding var userEmail: String
    
    @State private var showAlert = false
    
    var body: some View {
        
        Button(action: {
            checkUserData()
            
        }, label: {
            Text("Зарегистрироваться")
        })
            .alert(isPresented: $showAlert,
                   content: {
                Alert(title: Text("Введите корректные данные"),
                      dismissButton: .cancel())
            }
            )
            .padding()
    }
}

struct RegistrationNextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationNextButtonView(logIn: .constant(false),
                                   screen: .constant(1),
                                   userName: .constant(""),
                                   userLastName: .constant(""),
                                   userMobile: .constant(""),
                                   userLogin: .constant(""),
                                   userPassword: .constant(""),
                                   userEmail: .constant(""))
    }
}

extension RegistrationNextButtonView {
    func checkUserData() {
        if userName != "" && userLastName != "" && userMobile != "" && userEmail != "" && userLogin != "" && userPassword != "" {
            saveNewUser()
            logIn = true
            screen = 1
        } else {
            showAlert = true
        }
    }
}


extension RegistrationNextButtonView {
    func saveNewUser() {
        let newUser = User(name: userName,
                           lastName: userLastName,
                           mobile: userMobile,
                           email: userEmail,
                           login: userLogin,
                           password: userPassword,
                           id: users.count,
                           clients: [],
                           tasks: [],
                           events: [])
        
        users.append(newUser)
        userID = newUser.id
    }
}
