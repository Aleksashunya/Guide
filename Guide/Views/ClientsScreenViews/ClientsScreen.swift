//
//  ClientsScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct ClientsScreen: View {
    
    var body: some View {
        NavigationView {
            
            VStack {
                ClientsListView()
            }
            .navigationTitle("Клиенты")
        }
    }
}

struct ClientsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ClientsScreen()
    }
}
