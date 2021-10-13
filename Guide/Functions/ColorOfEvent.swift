//
//  ColorOfEvent.swift
//  Guide
//
//  Created by Александра Мельникова on 14.10.2021.
//

import SwiftUI

func colorOfEvent(condition: EventCondition) -> Color {
    var color: Color = .red
    
    if condition == .done {
        color = .green
    } else if condition == .during {
        color = .yellow
    }
    return color
}
