//
//  LoginTFView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct LoginTFView: View {
    var imageName: String
    var placeholder: String
    
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: "\(imageName)")
                .font(.title2)
                .frame(width: 40,
                       height: 30)
            TextField("\(placeholder)",
                      text: $text)
        }
        .padding()
    }
}

struct LoginTFView_Previews: PreviewProvider {
    static var previews: some View {
        LoginTFView(imageName: "envelope.fill",
                    placeholder: "login",
                    text: .constant(""))
    }
}
