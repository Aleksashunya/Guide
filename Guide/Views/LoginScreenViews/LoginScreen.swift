//
//  LoginScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct LoginScreen: View {
    @State private var loginText = ""
    @State private var passwordText = ""
    
    @Binding var logIn: Bool
    @Binding var screen: Int
    
    var body: some View {
        VStack {
            Spacer()
            Text("Добро пожаловать")
                .font(.largeTitle)
                .padding()
            
            LoginTFView(imageName: "envelope.fill",
                        placeholder: "login",
                        text: $loginText)
            
            LoginTFView(imageName: "lock.fill",
                        placeholder: "password",
                        text: $passwordText)
            
            HStack {
                LoginSecondButtonView(text: "Зарегистрироваться",
                                      action: {screen = 2})
                LoginSecondButtonView(text: "Забыл пароль",
                                      action: {})
            }
            LoginButtonView(login: $loginText,
                            password: $passwordText,
                            logIn: $logIn)
            Spacer()
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen(logIn: .constant(false),
                    screen: .constant(1))
    }
}
