//
//  AddNewEventScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct AddNewEventScreen: View {
    @State private var eventPlace = ""
    @State private var eventClient = ""
    @State private var eventDate = Date()
    @State private var eventNumberOfPersons = ""
    @State private var eventPrice = ""
    @State private var eventCondition: EventCondition = .during
    @State private var eventComment = ""
    @State private var showAlert = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        VStack {
            Form {

                    TextField("Место проведения",
                              text: $eventPlace)
                
                HStack {
                    Text("Клиент")
                    
                    Picker("", selection: $eventClient) {
                        
                        ForEach(currentUser.clients!.map{ $0.fullName },
                                id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                HStack {
                    Text("Дата")
                    DatePicker("", selection: $eventDate)
                }
                
                    TextField("Количество человек",
                              text: $eventNumberOfPersons)
                
                    TextField("Стоимость (руб)",
                              text: $eventPrice)

                
                HStack {
                    Text("Состояние")
                    
                    Picker("",
                           selection: $eventCondition) {
                        
                        ForEach(EventCondition.allCases,
                                id: \.self) {
                            Text($0.rawValue)
                        }
                           }
                }
                
                    TextField("Комментарий",
                              text: $eventComment)
            }
        }
        .navigationBarItems(trailing: Button(action: {
            saveNewEvent()
            
        }, label: {
            Text("Добавить")
        }))
        .alert(isPresented: $showAlert,
               content: {
                Alert(title: Text("Введите корректные данные"),
                      dismissButton: .cancel())
               }
        )
        .navigationTitle("Добавить заказ")
    }
}

struct AddNewEventScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddNewEventScreen()
    }
}


extension AddNewEventScreen {
    func saveNewEvent () {
        guard eventPlace != "", eventNumberOfPersons != "", eventPrice != "" else {
            showAlert = true
            return
        }
        let newEvent = Event(id: currentUser.events!.count,
                             clientID: 0,
                             date: eventDate,
                             place: eventPlace,
                             numberOfPersons: Int(eventNumberOfPersons) ?? 0,
                             price: Double(eventPrice) ?? 0,
                             comment: eventComment,
                             condition: eventCondition)
        
        users[userID].events!.append(newEvent)
        self.presentationMode.wrappedValue.dismiss()
    }
}
