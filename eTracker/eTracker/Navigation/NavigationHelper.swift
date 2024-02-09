//
//  NavigationHelper.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import Foundation
import SwiftUI

class NavigationHelper: ObservableObject {
    static let shared = NavigationHelper()
    
    @Published var path = NavigationPath()

    func clear() {
        path = .init()
    }
    
    func navigateBackToRoot() {
        path.removeLast(path.count)
    }
    
    func backToPrevious() {
        path.removeLast()
    }
    
    func navigateToCreatePlan() {
        path.append(eTrackerJourney.createPlan)
    }
    
    func navigateToDrinkyIngredientsView() {
    }

    func done() {
        path = .init()
    }
}
