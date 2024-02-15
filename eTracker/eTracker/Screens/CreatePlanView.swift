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
            
            VStack {
                ZStack {
                    HeaderView(title: "eTracker",
                               subtitle: "Create Plan",
                               bgColor: .black)
                    VStack {
                        ETextField(placeholder: "Teste....")
                        ETextField(placeholder: "Teste1....")
                        ETextField(placeholder: "Teste2....")
                        Spacer()
                        EButton(title: "Create") {
                        }
                    }
                    .padding(.top, 150)

                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    CreatePlanView()
}
