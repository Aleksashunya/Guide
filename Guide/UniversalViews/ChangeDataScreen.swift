//
//  ChangeDataScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct ChangeDataScreen: View {
    var category: String
    @Binding var meaning: String
    
    @State var data: String
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            
            Form {
                HStack {
                    Text("\(category)")
                        .foregroundColor(.gray)
                    
                    TextField("\(category)", text: $data)
                }
            }
            .navigationBarTitle("Изменть данные")
        }
        .navigationBarItems(trailing: Button(action: {
            meaning = data
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Text("Изменить")
        }))
    }
}

struct ChangeDataScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChangeDataScreen(category: "", meaning: .constant(""), data: "")
    }
}
