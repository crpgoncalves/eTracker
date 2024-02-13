//
//  CreatePlanView.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import SwiftUI

struct CreatePlanView: View {
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "eTracker", subtitle: "Create Plan", bgColor: .black)
                    .background(.red)
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    CreatePlanView()
}
