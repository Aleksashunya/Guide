//
//  Event.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import Foundation

struct Event: Identifiable {
    var id: Int
    var clientID: Int
    var date: Date
    var place: String
    var numberOfPersons: Int
    var price: Double
    var comment: String
    var condition: EventCondition
}

enum EventCondition: String, Equatable, CaseIterable {
    case done = "Выполнено"
    case canceled = "Отменено"
    case during = "В процессе"
}
