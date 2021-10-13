//
//  ClientInfoScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct ClientInfoScreen: View {
    @State private var meaning = ""

    var client: Client
    
    var body: some View {
        
        Form {
            ClientInfoRowView<ChangeDataScreen, Any>(labelText: "Имя",
                                                     meaningText: "\(client.name)") {
                ChangeDataScreen(category: "Имя",
                                 meaning: $meaning, data: meaning)}

            ClientInfoRowView<ChangeDataScreen, Any>(labelText: "Фамилия",
                                                     meaningText: "\(client.lastName)") {
                ChangeDataScreen(category: "Фамилия",
                                 meaning: $meaning, data: meaning)}

            ClientInfoRowView<ChangeDataScreen, Any>(labelText: "Телефон",
                                                     meaningText: "\(client.mobile)") {
                ChangeDataScreen(category: "Телефон",
                                 meaning: $meaning, data: meaning)}

            ClientInfoRowView<ChangeDataScreen, Any>(labelText: "Почта",
                                                     meaningText: "\(client.email ?? "")") {
                ChangeDataScreen(category: "Почта",
                                 meaning: $meaning, data: meaning)}

            NavigationLink(
                destination: ClientEventsScreen(),
                label: {
                    Text("Заказы")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            )
        }.navigationTitle("Карточка клиента")
    
    }
}

struct ClientInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        ClientInfoScreen(client: Client(name: "",
                                        lastName: "",
                                        mobile: "",
                                        id: 0))
    }
}
