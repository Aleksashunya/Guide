//
//  RegistrationTFView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct RegistrationTFView: View {
    
    @Binding var text: String
    
    var placeholder: String
    
    var body: some View {
        TextField("\(placeholder)",
                  text: $text)
    }
}

struct RegistrationTFView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationTFView(text: .constant(""),
                           placeholder: "")
    }
}
