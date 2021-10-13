//
//  TotalFunctions.swift
//  Guide
//
//  Created by Александра Мельникова on 14.10.2021.
//

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
