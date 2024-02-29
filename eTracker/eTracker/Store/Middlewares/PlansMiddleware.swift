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
                dispatch(AddPlan(plan: plan))
            }
            
        case let action as SavePlan:
            DataController.shared.createNewPlan(action.name) { result in
                
                switch result {
                case .success(let plan):
                    
                    if let plan = plan {
                        dispatch(AddPlan(plan: [plan]))
                        
                    }
                    
                case .failure(let error):
                    print("[plansMiddleware] - \(error.localizedDescription)")
                }
                
            }
            
        default:
            break
        }
        
    }
}
