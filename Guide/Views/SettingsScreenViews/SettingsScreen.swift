//
//  SettingsScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//
import SwiftUI

struct SettingsScreen: View {
    @State private var category = ""
    @State private var meaning = ""
    @State private var showAlert = false
    
    @Binding var logIn: Bool
    
    var body: some View {
        NavigationView {
            
            Form {
                
                SettingsUserView(meaning: $meaning)
                
                SettingsExitButtonView(showAlert: $showAlert, logIn: $logIn)
            }
            .navigationTitle("Настройки")
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen(logIn: .constant(true))
    }
}
