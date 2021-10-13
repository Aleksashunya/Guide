//
//  ClientsListView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct ClientsListView: View {
    
    @StateObject private var userViewModel = UserViewModel()
    
    var body: some View {
        if userViewModel.clients == [] {
            Text("Здесь появятся данные о Ваших клиентах")
        } else {
        List(userViewModel.clients ?? []) {client in
            
            NavigationLink(
                destination: ClientInfoScreen(client: client),
                label: {
                    Text("\(client.fullName)")
                    Text("\(client.id) заказов")
                        .foregroundColor(.blue)
                }
            )
        }
        .onAppear(perform: {
            userViewModel.onAppear()
        })
        }
    }
}

struct ClientsListView_Previews: PreviewProvider {
    static var previews: some View {
        ClientsListView()
    }
}
