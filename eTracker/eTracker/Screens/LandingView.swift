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
    @EnvironmentObject var store: Store<AppState>
    
    var body: some View {
        
        VStack{
            Spacer()
                .frame(height: 30)
            Image("SplashHeader")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 250)
                .shadow(radius: 15)
            Spacer()
                .frame(height: 25)
            Text("eTracker")
                .font(.largeTitle)
            Text("abc")
                .font(.title)
            Spacer()
            EButton(title: "Create Plan") {
                navigationHelper.navigateTo(.createPlan)
            }
            EButton(title: "List Plans") {
                store.dispatch(action: LoadPlans())
                navigationHelper.navigateTo(.listPlans)
            }
            EButton(title: "Load Plan") {
                navigationHelper.navigateTo(.loadPlan)
            }
        }.embedInNavigationView()
    }
}


#Preview {
    LandingView()
}
