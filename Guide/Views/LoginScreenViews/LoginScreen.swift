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
    @Binding var screen: Screens
    
    var body: some View {
        VStack {
            Spacer()
            Text("Добро пожаловать в")
                .font(.largeTitle)
            
            Text("Guide")
                .font(.largeTitle)
            
            Image("loginImage")
                .resizable()
                .frame(width: 250, height: 250, alignment: .center)
            
            LoginTFView(imageName: "envelope.fill",
                        placeholder: "login",
                        text: $loginText)
            
            LoginTFView(imageName: "lock.fill",
                        placeholder: "password",
                        text: $passwordText)
            
            HStack {
                LoginSecondButtonView(text: "Зарегистрироваться",
                                      action: {screen = .registrationScreen})
                LoginSecondButtonView(text: "Забыли пароль?",
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
                    screen: .constant(.loginScreen))
    }
}
