//
//  ContentView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var logIn = DataManager.shared.loadLoginStatus()
    @State private var screen: Screens = .loginScreen
    
    var body: some View {
        if logIn == false && screen == .loginScreen {
            LoginScreen(logIn: $logIn,
                        screen: $screen)
            
        } else if logIn == true && screen == .loginScreen {
            MainScreen(logIn: $logIn)
            
        } else if screen == .registrationScreen {
            RegistrationScreen(screen: $screen,
                               logIn: $logIn)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
