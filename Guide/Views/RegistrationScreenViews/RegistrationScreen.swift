//
//  RegistrationScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct RegistrationScreen: View {
    @State private var userName = ""
    @State private var userLastName = ""
    @State private var userMobile = ""
    @State private var userLogin = ""
    @State private var userPassword = ""
    @State private var userEmail = ""
    
    @Binding var screen: Screens
    @Binding var logIn: Bool
    
    var body: some View {
        VStack {
            VStack {
                Text("Регистрация")
                    .font(.largeTitle)
                    .padding()
                
                Spacer()
                
                RegistrationUserView(userName: $userName,
                                     userLastName: $userLastName,
                                     userMobile: $userMobile,
                                     userLogin: $userLogin,
                                     userPassword: $userPassword,
                                     userEmail: $userEmail)
            }
            
            Spacer()
            
            HStack {
                RegistrationBackButtonView(screen: $screen)
                
                Spacer()
                
                RegistrationNextButtonView(logIn: $logIn,
                                           screen: $screen,
                                           userName: $userName,
                                           userLastName: $userLastName,
                                           userMobile: $userMobile,
                                           userLogin: $userLogin,
                                           userPassword: $userPassword,
                                           userEmail: $userEmail)
            }
            
            Spacer()
        }
    }
}

struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreen(screen: .constant(.registrationScreen),
                           logIn: .constant(false))
    }
}
