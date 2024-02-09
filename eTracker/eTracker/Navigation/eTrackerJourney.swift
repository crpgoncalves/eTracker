//
//  eTrackerJourney.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import Foundation

enum eTrackerJourney {
    case createPlan
    case loadPlan
}

import Foundation
import SwiftUI

class eTrackerViewFactory {
    
    static func setViewForDestination(_ destination: eTrackerJourney) -> AnyView {
        
        switch destination {
        case .createPlan:
            return AnyView(CreatePlanView())
        case .loadPlan:
            return AnyView(CreatePlanView())
        }
    }
}
