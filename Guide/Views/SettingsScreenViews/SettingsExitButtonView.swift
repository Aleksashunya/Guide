//
//  SettingsExitButtonView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct SettingsExitButtonView: View {
    @Binding var showAlert: Bool
    
    @Binding var logIn: Bool
    
    var body: some View {
        Button("Выход", action: {
            showAlert = true
        })
        .alert(isPresented: $showAlert,
               content: {
                Alert(title: Text("Вы уверены, что хотите выйти?"),
                      primaryButton: .cancel(Text("Отменить")),
                      secondaryButton: .default(Text("Да, выйти"),
                                                action: { DataManager.shared.saveLoginStatus(with: false)
                                                    logIn = false
                                                    }) )
               }
        )
    }
}

struct SettingsExitButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsExitButtonView(showAlert: .constant(false), logIn: .constant(true))
    }
}
