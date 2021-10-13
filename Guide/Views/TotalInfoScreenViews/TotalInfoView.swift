//
//  TotalInfoView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct TotalInfoView: View {
    @StateObject private var userViewModel = UserViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("Количество клиентов:")
                Spacer()
                Text("\(userViewModel.clients!.count)")
            }
            
            HStack {
                Text("Заказов выполнено:")
                Spacer()
                Text("\(totalNumberOfDone(events: userViewModel.events!)) шт/ \(lround(totalSumOfDone(events: userViewModel.events!))) руб")
            }.foregroundColor(.green)
            
            HStack {
                Text("Заказов в процессе:")
                Spacer()
                Text("\(totalNumberOfDuring(events: userViewModel.events!)) шт/ \(lround(totalSumOfDuring(events: userViewModel.events!))) руб")
            }
            .foregroundColor(.yellow)
            
            HStack {
                Text("Заказов отменено:")
                Spacer()
                Text("\(totalNumberOfCanceled(events: userViewModel.events!)) шт/ \(lround(totalSumOfCanceled(events: userViewModel.events!))) руб")
            }
            .foregroundColor(.red)
        }
        .onAppear {
            userViewModel.onAppear()
        }
        .padding()
    }
}

struct TotalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TotalInfoView()
    }
}
