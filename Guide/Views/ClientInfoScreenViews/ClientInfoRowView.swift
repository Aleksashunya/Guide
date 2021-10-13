//
//  ClientInfoRowView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct ClientInfoRowView<Content: View, T>: View {
    
    var labelText: String
    var meaningText: String
    var content: () -> Content
    
    var body: some View {
        NavigationLink(
            destination: content(),
            label: {
                HStack {
                    Text("\(labelText)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    Text("\(meaningText)")
                }
            }
        )
    }
}

struct ClientRowView_Previews: PreviewProvider {
    static var previews: some View {
        ClientInfoRowView<MainScreen, Any>(labelText: "",
                                           meaningText: "") {
            MainScreen(logIn: .constant(true))
        }
    }
}
