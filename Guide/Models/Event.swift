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

func totalSumOfDone (events: [Event]) -> Double {
    let done = events.filter{ $0.condition == .done }
    var sum = 0.0
    for index in done {
        sum += index.price
    }
    return sum
}

func totalSumOfDuring (events: [Event]) -> Double {
    let during = events.filter{ $0.condition == .during }
    var sum = 0.0
    for index in during {
        sum += index.price
    }
    return sum
}

func totalSumOfCanceled (events: [Event]) -> Double {
    let canceled = events.filter{ $0.condition == .canceled }
    var sum = 0.0
    for index in canceled {
        sum += index.price
    }
    return sum
}


func totalNumberOfDone (events: [Event]) -> Int {
    let done = events.filter{ $0.condition == .done }
    return done.count
}

func totalNumberOfDuring (events: [Event]) -> Int {
    let during = events.filter{ $0.condition == .during }
    return during.count
}

func totalNumberOfCanceled (events: [Event]) -> Int {
    let canceled = events.filter{ $0.condition == .canceled }
    return canceled.count
}
