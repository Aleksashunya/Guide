//
//  LoginSecondButtonView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct LoginSecondButtonView: View {
    
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text("\(text)")
                .font(.body)
        })
        .padding()
    }
}

struct LoginSecondButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSecondButtonView(text: "Зарегистрироваться",
                              action: {})
    }
}
