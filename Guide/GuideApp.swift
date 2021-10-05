//
//  GuideApp.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

@main
struct GuideApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
