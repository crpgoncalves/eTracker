//
//  CreatePlanView.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import SwiftUI

struct CreatePlanView: View {
    @State var selection1: String? = nil
    @State var name : String = ""
    
    var body: some View {
        NavigationView{
            
            VStack {
                ZStack {
                    HeaderView(title: "eTracker",
                               subtitle: "Create Plan",
                               bgColor: .black)
                    VStack {
                        TextFormView { validate in
                            VStack {
                                TextField("name it", text: $name)
                                    .validate {
                                        name.validationState() == .valid
                                    }
                                    .modifier(CustomTFViewModifier(text: name))
                            }
                            .padding()
                        }
                        EDropDown(
                            selection: $selection1,
                            options: [
                                "Apple",
                                "Google",
                                "Amazon",
                                "Facebook",
                                "Instagram"
                            ]
                        )
                        Spacer()
                            .frame(height: 40)
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
