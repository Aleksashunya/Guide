//
//  AddNewClientScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct AddNewClientScreen: View {
    
    @State private var clientName = ""
    @State private var clientLastName = ""
    @State private var clientMobile = ""
    @State private var clientEmail = ""
    @State private var showAlert = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        VStack {
            Form {
                TextField("Имя",
                          text: $clientName)
                    .disableAutocorrection(true)
                
                TextField("Фамилия",
                          text: $clientLastName)
                    .disableAutocorrection(true)
                
                TextField("Номер телефона",
                          text: $clientMobile)
                
                TextField("E-mail",
                          text: $clientEmail)
                    .disableAutocorrection(true)
            }
        }
        .navigationTitle("Добавить клиента")
        .navigationBarItems(trailing: Button(action: {
            saveNewClient()
        }, label: {
            Text("Добавить")
        }))
        .alert(isPresented: $showAlert,
               content: {
            Alert(title: Text("Введите корректные данные"),
                  dismissButton: .cancel())
        }
        )
    }
}

struct AddNewClientScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddNewClientScreen()
    }
}

extension AddNewClientScreen {
    func saveNewClient () {
        guard clientName != "", clientLastName != "", clientMobile != "", clientEmail != ""  else {
            showAlert = true
            return }
        let newClient = Client(name: clientName,
                               lastName: clientLastName,
                               mobile: clientMobile,
                               email: clientEmail,
                               id: currentUser.clients!.count)
        
        users[userID].clients!.append(newClient)
        self.presentationMode.wrappedValue.dismiss()
    }
}
