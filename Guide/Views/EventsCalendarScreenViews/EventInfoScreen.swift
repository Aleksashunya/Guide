//
//  EventInfoScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct EventInfoScreen: View {
    
    @State private var meaning = ""
    var body: some View {
        
            
            Form {
                
                NavigationLink(
                    destination: ChangeDataScreen(category: "Клиент", meaning: $meaning, data: meaning),
                    label: {
                        HStack {
                            Text("Клиент")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }
                )
                
                NavigationLink(
                    destination: ChangeDataScreen(category: "Дата", meaning: $meaning, data: meaning),
                    label: {
                        HStack {
                            Text("Дата")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("\(users[userID].events![0].date, style: .date)")
                        }
                    }
                )
                
                NavigationLink(
                    destination: ChangeDataScreen(category: "Место", meaning: $meaning, data: meaning),
                    label: {
                        HStack {
                            Text("Место")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("\(users[userID].events![0].place)")
                        }
                    }
                )
                
                NavigationLink(
                    destination: ChangeDataScreen(category: "Количество человек", meaning: $meaning, data: meaning),
                    label: {
                        HStack {
                            Text("Количество человек")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("\(users[userID].events![0].numberOfPersons)")
                        }
                    }
                )
                
                NavigationLink(
                    destination: ChangeDataScreen(category: "Стоимость", meaning: $meaning, data: meaning),
                    label: {
                        HStack {
                            Text("Стоимость")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("\(lround(users[userID].events![0].price))")
                        }
                    }
                )
                
                NavigationLink(
                    destination: ChangeDataScreen(category: "Состояние", meaning: $meaning, data: meaning),
                    label: {
                        HStack {
                            Text("Состояние")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("\(users[userID].events![0].condition.rawValue)")
                        }
                    }
                )
                
                NavigationLink(
                    destination: ChangeDataScreen(category: "Комментарий", meaning: $meaning, data: meaning),
                    label: {
                        VStack {
                            HStack {
                                Text("Коментарий")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                Spacer()
                            }
                            HStack {
                                Text("\(users[userID].events![0].comment)")
                                Spacer()
                            }
                        }
                    }
                )
            }
            .navigationBarTitle("Карточка Заказа")
        
    }
}

struct EventInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        EventInfoScreen()
    }
}

