//
//  eTrackerApp.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import SwiftUI

@main
struct eTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
