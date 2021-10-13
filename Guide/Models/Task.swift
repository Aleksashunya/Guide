//
//  Task.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import Foundation
import SwiftUI

struct Task: Identifiable {
    var name: String
    var date: Date
    var condition: EventCondition
    var responsibleID: Int
    var clientID: Int
    var id: Int
}

func colorOfEvent(condition: EventCondition) -> Color {
    var color: Color = .red
    
    if condition == .done {
        color = .green
    } else if condition == .during {
        color = .yellow
    }
    return color
}
