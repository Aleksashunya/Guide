//
//  RegistrationUserView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct RegistrationUserView: View {
    @Binding var userName: String
    @Binding var userLastName: String
    @Binding var userMobile: String
    @Binding var userLogin: String
    @Binding var userPassword: String
    @Binding var userEmail: String
    
    var body: some View {
        Form {
            RegistrationTFView(text: $userName,
                               placeholder: "Имя")
            RegistrationTFView(text: $userLastName,
                               placeholder: "Фамилия")
            RegistrationTFView(text: $userMobile,
                               placeholder: "Номер телефона")
            RegistrationTFView(text: $userEmail,
                               placeholder: "E-mail")
            RegistrationTFView(text: $userLogin,
                               placeholder: "Логин")
            RegistrationTFView(text: $userPassword,
                               placeholder: "Пароль (не менее 6 символов)")
        }
    }
}

struct RegistrationCompanyView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationUserView(userName: .constant(""),
                             userLastName: .constant(""),
                             userMobile: .constant(""),
                             userLogin: .constant(""),
                             userPassword: .constant(""),
                             userEmail: .constant(""))
    }
}
