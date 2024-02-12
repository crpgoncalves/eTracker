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
            VStack(alignment: .center, spacing: 25, content: {
                Image("SplashHeader")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Circle().stroke(.gray, lineWidth: 0)
                    }
                    .frame(maxWidth: 200)
                Spacer()
                    .frame(height: 25)
                Text("eTracker")
                    .font(.largeTitle)
                Text("Plans everything")
                    .font(.title)
                Spacer()
                EButton(title: "Create Plan") {
                    //avPath.append(.)
                    navigationHelper.navigateTo(.createPlan)
                }
                EButton(title: "Load Plan") {
                    
                }
            })
        }
        .scrollIndicators(.hidden)
//        if #available(iOS 16.4, *) {
//            .scrollBounceBehavior(.basedOnSize)
//        } else {
//            .scrollBounceBehavior(.disabled)
//        }
        
    }
}


#Preview {
    LandingView()
}
