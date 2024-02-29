//
//  ListPlansView.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 20/02/2024.
//

import SwiftUI

struct ListPlansView: View {
    @EnvironmentObject var store: Store<AppState>
    
    
    var body: some View {
        //    var tasks = store.state.plans.plan.tasks
        
        VStack {
            ZStack {
                HeaderView(title: "eTracker",
                           subtitle: "List Plans",
                           bgColor: .black)
                VStack {
                    List(store.state.plans.plan) {
                        Text($0.name ?? "")
                    }
                    EButton(title: "Add Event") {
                        store.dispatch(action: SavePlan(name: "nome" + "\(Int.random(in: 1..<200))"))
                        
                    }
                }
                
            }
        }.embedInNavigationView()
    }
}

#Preview {
    ListPlansView()
}
