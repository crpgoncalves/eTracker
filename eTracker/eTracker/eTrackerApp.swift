//
//  eTrackerApp.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import SwiftUI
import Foundation

@main
struct eTrackerApp: App {
    
    let persistenceController = PersistenceController.shared
    
    @ObservedObject var navigationHelper = NavigationHelper()

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navigationHelper.path) {
                LandingView()
                    .navigationDestination(for: NavigationHelper.Destination.self) { destination in
                        switch destination {
                        case .createPlan:
                            CreatePlanView()
                        case .loadPlan:
                            AddEventView()
                        }
                    }
            }
            .environmentObject(navigationHelper)
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
