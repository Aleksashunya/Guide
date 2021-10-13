//
//  TotalInfoTaskListRowView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct TotalInfoTaskListRowView: View {
    var task: Task
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                
                Text("\(task.date, style: .date)")
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.footnote)
                
                Spacer()
                
                Text("\(task.condition.rawValue)")
                    .foregroundColor(colorOfEvent(condition: task.condition))
            }
            
            Text("\(task.name)")
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.blue)
            
            HStack {
                Text("Клиент: ")
                    .foregroundColor(.gray)
                Text("\(currentUser.clients?[0].fullName ?? "")")
            }
            
            
           
        }
    }
}

struct TotalInfoTaskListRowView_Previews: PreviewProvider {
    static var previews: some View {
        TotalInfoTaskListRowView(task: Task(name: "",
                                            date: Date(),
                                            condition: .canceled,
                                            responsibleID: 0,
                                            clientID: 0,
                                            id: 0))
    }
}
