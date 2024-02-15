//
//  LandingView.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import SwiftUI
import CoreData

struct LandingView: View {
    
    @EnvironmentObject var navigationHelper: NavigationHelper
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center, spacing: 25, content: {
                    Spacer()
                        .frame(height: 25)
                    Image("SplashHeader")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 200)
                        .shadow(radius: 15)
                    Spacer()
                        .frame(height: 25)
                    Text("eTracker")
                        .font(.largeTitle)
                    Text("abc")
                        .font(.title)
                    Spacer()
                        .frame(height: 150)
                    EButton(title: "Create Plan") {
                        navigationHelper.navigateTo(.createPlan)
                    }
                    EButton(title: "Load Plan") {
                        navigationHelper.navigateTo(.loadPlan)
                    }
                })
            }
        }
        .scrollIndicators(.hidden)
    }
}


#Preview {
    LandingView()
}
