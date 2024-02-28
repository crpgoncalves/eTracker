//
//  ListPlansView.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 20/02/2024.
//

import SwiftUI



struct ListPlansView: View {
    @FetchRequest(sortDescriptors: []) var plans: FetchedResults<Plan>
    @Environment(\.managedObjectContext) var moc

    var body: some View {
        NavigationView{
            VStack {
                ZStack {
                    HeaderView(title: "eTracker",
                               subtitle: "List Plans",
                               bgColor: .black)
                    VStack {
                        List(plans) {
                            Text($0.name ?? "")
                        }
                        EButton(title: "Add Event") {
                            let plan = Plan(context: moc)
                            plan.name = "nome"
                            plan.tasks = Task()
                            do {
                                try moc.save()
                            } catch {
                                // handle the Core Data error
                            }
                        }
                    }
                    
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ListPlansView()
}
