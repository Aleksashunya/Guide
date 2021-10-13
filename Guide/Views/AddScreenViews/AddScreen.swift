//
//  AddScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct AddScreen: View {
    @State private var selectedTag: String?
    
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                AddNewButtonView(selectedTag: $selectedTag,
                                 imageName: "person.fill.badge.plus",
                                 buttonName: "Новый клиент",
                                 tag: "newClient",
                                 destination: AddNewClientScreen())
                
                AddNewButtonView(selectedTag: $selectedTag,
                                 imageName: "archivebox.fill",
                                 buttonName: "Новая задача",
                                 tag: "newTask",
                                 destination: AddNewTaskScreen())
                
                AddNewButtonView(selectedTag: $selectedTag,
                                 imageName: "cart.fill.badge.plus",
                                 buttonName: "Новый заказ",
                                 tag: "newEvent",
                                 destination: AddNewEventScreen())
                Spacer()
            }
            .navigationBarTitle("Добавить...")
        }
    }
}

struct AddScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddScreen()
    }
}
