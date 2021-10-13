//
//  AddNewTaskScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct AddNewTaskScreen: View {
    @State private var taskName = ""
    @State private var taskDate = Date()
    @State private var taskCondition: EventCondition = .during
    @State private var taskResponsible = ""
    @State private var taskClient = ""
    @State private var showAlert = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        VStack {
            Form {
                    TextField("Задача",
                              text: $taskName)
                
                HStack {
                    Text("Дата")
                    DatePicker("",
                               selection: $taskDate)
                }
                
                HStack {
                    Text("Состояние")
                    Picker("",
                           selection: $taskCondition) {
                        
                        ForEach(EventCondition.allCases,
                                id: \.self) {
                            Text($0.rawValue)
                        }
                           }
                }
                
                HStack {
                    Text("Клиент")
                    Picker("", selection: $taskClient) {
                        
                        ForEach(currentUser.clients!.map{ $0.fullName },
                                id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
        }
        .navigationBarItems(trailing: Button(action: {
            saveNewTask()
            
        }, label: {
            Text("Добавить")
        }))
        .alert(isPresented: $showAlert,
               content: {
                Alert(title: Text("Введите корректные данные"),
                      dismissButton: .cancel())
               }
        )
        .navigationTitle("Добавить задачу")
    }
}

struct AddNewTaskScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddNewTaskScreen()
    }
}

extension AddNewTaskScreen {
    func saveNewTask () {
        guard taskName != ""  else {
            showAlert = true
            return }
        let newTask = Task(name: taskName,
                           date: taskDate,
                           condition: taskCondition,
                           responsibleID: 0,
                           clientID: 0,
                           id: currentUser.tasks!.count)
        
        users[userID].tasks!.append(newTask)
        self.presentationMode.wrappedValue.dismiss()
    }
}
