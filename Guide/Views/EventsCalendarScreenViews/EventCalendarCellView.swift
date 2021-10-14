//
//  EventCalendarCellView.swift
//  Guide
//
//  Created by Александра Мельникова on 14.10.2021.
//

import SwiftUI

struct EventCalendarCellView: View {
    static let column = 7
    static let row = 5
    let width = (UIScreen.main.bounds.width / 7 ) - 20
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: width, height: width)
                .foregroundColor(.green)
            
            Text("1")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct EventCalendarCellView_Previews: PreviewProvider {
    static var previews: some View {
        EventCalendarCellView()
    }
}
