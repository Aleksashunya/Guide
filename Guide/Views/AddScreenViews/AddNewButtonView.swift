//
//  AddNewButtonView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct AddNewButtonView<Content: View>: View{
    @Binding var selectedTag: String?
    
    var imageName: String
    var buttonName: String
    var tag: String
    var destination: Content
    
    var body: some View {
        Button(action: {
            self.selectedTag = tag
        }, label: {
            HStack {
                Image(systemName: imageName)
                Text(buttonName)
            }
        })
        .background(
            NavigationLink(
                destination: destination,
                tag: tag,
                selection: $selectedTag,
                label: { EmptyView() }
            )
        )
        .frame(width: 250,
               height: 40)
        .animation(.easeOut)
        .background(Color.blue)
        .cornerRadius(20)
        .accentColor(.white)
        .padding()
    }
}

struct AddNewButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewButtonView(selectedTag: .constant(""),
                         imageName: "",
                         buttonName: "",
                         tag: "",
                         destination: AddNewClientScreen())
    }
}
