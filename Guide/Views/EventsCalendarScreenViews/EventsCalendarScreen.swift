//
//  EventsCalendarScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct EventsCalendarScreen<Content, T>: View where Content: View {
    
    let items: [T]
    let columns: Int
    let content: (T) -> Content
    
    var rows: Int {
        items.count / columns
    }
    
    @StateObject private var userViewModel = UserViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "chevron.backward.circle")
                    })
                    Text("Сентябрь 2021")
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "chevron.right.circle")
                    })
                }.padding()
                
                GeometryReader { geometry in
                    let sideSize = geometry.size.width / CGFloat(columns) - 17
                    LazyVStack {
                        ForEach(0...rows, id: \.self) { rowIndex in
                            LazyHStack {
                                ForEach(0..<columns) { columnIndex in
                                    if let index = elementRow(row: rowIndex, column: columnIndex) {
                                        NavigationLink(
                                            destination: EventInfoScreen(),
                                            label: {
                                                content(items[index])
                                                    .foregroundColor(.black)
                                                    .frame(width: sideSize,
                                                           height: sideSize)
                                                    .background(RadialGradient(gradient: Gradient(colors: [Color.blue, Color.gray]),
                                                                               center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                                                                               startRadius: 1,
                                                                               endRadius: 30))
                                                    .cornerRadius(5)
                                                    .shadow(color: .accentColor, radius: 2)
                                            }
                                            
                                        )
                                        
                                    } else {
                                        Spacer()
                                    }
                                }
                            }
                        }
                    }
                }
                
                Form {
                    Section(header: Text("\(Date(), style: .date)")) {
                        List(userViewModel.events ?? []) { event in
                            
                            NavigationLink(
                                destination: EventInfoScreen(),
                                label: {
                                    Text("\(event.place) - \(event.date, style: .date)")
                                }
                            )
                        }
                    }
                }
                .onAppear(perform: {
                    userViewModel.onAppear()
                })
            }
            .navigationTitle("Заявки")
        }
    }
    
    private func elementRow(row: Int, column: Int) -> Int?  {
        let index = row * columns + column
        return index < items.count ? index : nil
    }
}

struct EventsCalendarScreen_Previews: PreviewProvider {
    static var previews: some View {
        EventsCalendarScreen(items: Array(1...31), columns: 7) { item in
            VStack {
                Text("\(item)")
                    .font(.caption)
                
                ZStack {
                    Circle()
                        .foregroundColor(.green)
                    
                    Text("1")
                        .font(.caption)
                }
            }
        }
    }
}
