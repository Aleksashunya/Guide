//
//  MainScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct MainScreen: View {
    @Binding var logIn: Bool
    
    var body: some View {
        TabView {
            TotalInfoScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Главная")
                }
            
            EventsCalendarScreen(items: Array(1...31),
                                 columns: 7) { item in
                VStack {
                    Text("\(item)")
                    ZStack {
                        Circle()
                            .foregroundColor(.green)
                        
                        Text("1")
                            .font(.footnote)
                    }
                }
            }
            .tabItem {
                Image(systemName: "calendar")
                Text("Календарь")
            }
            
            AddScreen()
                .tabItem {
                    Image(systemName: "plus.circle")
                }
            
            ClientsScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Клиенты")
                }
            
            SettingsScreen(logIn: $logIn)
                .tabItem {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                    Text("Настройки")
                }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen(logIn: .constant(true))
    }
}
