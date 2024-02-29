//
//  Action.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 29/02/2024.
//

import Foundation

protocol Action { }

struct LoadPlans: Action {
    
}

struct AddPlan: Action {
    let plan: [Plan]
}

struct SavePlan: Action {
    let name: String
}
