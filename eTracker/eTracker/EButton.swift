//
//  EButton.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import SwiftUI

struct EButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.black)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .shadow(radius: 15)
    }
}

struct EButton: View {
    var title: String
    var action: () -> Void
    var body: some View {
        
        Button {
            print("Button \(title) pressed")
            action()
        } label: {
            Text(title)
                .frame(maxWidth: UIScreen.screenWidth - 100)
        }
        .buttonStyle(EButtonStyle())
    }
}

#Preview {
    EButton(title: "Button Preview") {
        print("Button Button Preview pressed!")
        
    }
}
