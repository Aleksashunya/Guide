//
//  TotalInfoTaskListView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct TotalInfoTaskListView: View {
    @State private var sort = "Все"
    
    @StateObject private var userViewModel = UserViewModel()
    
    private var sorting = ["Все",
                           "В процессе",
                           "Выполнено",
                           "Отменено"]
    
    var body: some View {
        Form {
            Section(header: Text("Список задач")) {
                
                Picker(selection: $sort, label: Text("")) {
                    ForEach(sorting, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                List(userViewModel.tasks ?? []) { task in

                    if task.condition.rawValue == sort || sort == "Все"  {
                        TotalInfoTaskListRowView(task: task)
                    }
                }
            }
        }
        .onAppear(perform: {
            userViewModel.onAppear()
        })
    }
}

struct TotalInfoTaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TotalInfoTaskListView()
    }
}
