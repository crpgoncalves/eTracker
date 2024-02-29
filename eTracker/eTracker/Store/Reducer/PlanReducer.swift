//
//  PlanReducer.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 29/02/2024.
//

import Foundation


func planReducer(_ state: PlansState, _ action: Action) -> PlansState {
    
    var state = state
    
    switch action {
    case let action as AddPlan:
        state.plan.append(contentsOf: action.plan)
    default:
        break
    }
    
    return state
}
