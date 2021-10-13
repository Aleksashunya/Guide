//
//  Task.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import Foundation

struct Task: Identifiable {
    var name: String
    var date: Date
    var condition: EventCondition
    var responsibleID: Int
    var clientID: Int
    var id: Int
}
