//
//  PlanMiddleware.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 29/02/2024.
//

import Foundation

func plansMiddleware() -> Middleware<AppState> {
    
    return { state, action, dispatch in
        
        switch action {
        case _ as LoadPlans:
            if let plan: [Plan] = DataController.shared.fetchPlans() {
                dispatch(SetPlan(plan: plan))
            }

        case let action as SavePlan:
            try? DataController.shared.createNewPlan(action.name)
            dispatch(LoadPlans())
        default:
            break
        }
        
    }
    
}
