//
//  ClientEventsScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct ClientEventsScreen: View {
    
    var body: some View {
        
        List(users[userID].events!) {event in
            
            NavigationLink(
                destination: EventInfoScreen(),
                label: {
                    HStack {
                        Text("\(event.place)")
                        Text("- \(lround(event.price)) руб")
                        Spacer()
                        Text("\(event.condition.rawValue)")
                            .foregroundColor(.green)
                    }
                }
            )
        }.navigationBarTitle("Заказы")
    }
}

struct ClientEventsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ClientEventsScreen()
    }
}
