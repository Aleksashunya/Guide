//
//  RegistrationBackButtonView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct RegistrationBackButtonView: View {
    @Binding var screen: Screens
    
    var body: some View {
        Button(action: {
            screen = .loginScreen
        }, label: {
            Text("Отмена")
        })
            .padding()
    }
}

struct RegistrationBackButton_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationBackButtonView(screen: .constant(.loginScreen))
    }
}
