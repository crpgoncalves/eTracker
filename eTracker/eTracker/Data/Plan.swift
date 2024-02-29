//
//  Plan.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 20/02/2024.
//

import Foundation
import CoreData

extension Plan {
    
    func copyInEntity(plan: Plan){
        name = plan.name
        type = plan.type
    }
}
