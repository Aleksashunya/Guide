//
//  LoginButtonView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct LoginButtonView: View {
    @State private var showAlert = false
    
    @Binding var login: String
    @Binding var password: String
    @Binding var logIn: Bool
    
    var body: some View {
        Button(action: {
            checkLoginData(login: login,
                           password: password)
            
            if showAlert == false {
                DataManager.shared.saveLoginStatus(with: true)
                logIn = true
//                StorageManager.shared.clearAll()
            }
            }, label: {
            Text("Войти")
        })
        .alert(isPresented: $showAlert,
               content: {
                Alert(title: Text("Пользователь не найден"),
                      dismissButton: .cancel(Text("OK")))
               }
        )
        .frame(width: 150,
               height: 40)
        .animation(.easeOut)
        .background(Color.blue)
        .cornerRadius(20)
        .accentColor(.white)
        .padding()
    }
}

struct LoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView(login: .constant(""),
                        password: .constant(""),
                        logIn: .constant(false))
    }
}


extension LoginButtonView {
    func checkLoginData(login: String, password: String){
        

    }
}

