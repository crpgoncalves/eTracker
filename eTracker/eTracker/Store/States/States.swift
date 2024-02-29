//
//  States.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 29/02/2024.
//

import Foundation

protocol ReduxState { }

struct AppState: ReduxState {
    var plans = PlansState()
}

struct PlansState: ReduxState {
    var plan = [Plan]()
}
