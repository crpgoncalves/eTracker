//
//  LandingView.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import SwiftUI
import CoreData

struct LandingView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, content: {
                Spacer()
                    .frame(height: 50)
                Image("SplashHeader")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Circle().stroke(.gray, lineWidth: 0)
                    }
                    .frame(maxWidth: 200)
                Spacer()
                    .frame(height: 50)
                Text("eTracker")
                    .font(.largeTitle)
                Spacer()
                    .frame(height: 25)
                Text("Plans everything")
                    .font(.title)
                Spacer()
                    .frame(height: 200)
                EButton(title: "Create Plan") {
                    print("Button Preview 1 pressed")
                }
                Spacer()
                    .frame(height: 25)
                EButton(title: "Load Plan") {
                    print("Button Preview 2 pressed")
                }
                Spacer()
                    .frame(height: 25)
            })
        }
        .scrollIndicators(.hidden)
        .scrollBounceBehavior(.basedOnSize)
    }
}


#Preview {
    LandingView()
}
