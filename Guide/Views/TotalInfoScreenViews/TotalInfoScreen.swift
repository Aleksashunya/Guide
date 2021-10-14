//
//  TotalInfoScreen.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct TotalInfoScreen: View {
    
    var body: some View {
        NavigationView {
            VStack {
                TotalInfoView()
                
                TotalInfoTaskListView()
            }.navigationBarTitle(Text("Сводная информация"),
                                 displayMode: .inline)
        }
    }
}

struct TotalInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        TotalInfoScreen()
    }
}
