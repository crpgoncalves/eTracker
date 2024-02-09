//
//  EButton.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import SwiftUI

struct EButtonConfiguration: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(EdgeInsets(top: 15, leading: 75, bottom: 15, trailing: 75))
            .background(.black)
            .foregroundStyle(.white)
            .clipShape(Capsule(), style: FillStyle(eoFill: false, antialiased: true))
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}


struct EButton: View {
    let title: String
    let action: (() -> Void)?
    
    var body: some View {
        Button(title) {
            guard let action = action else {
                return
            }
            action()
        }
        .buttonStyle(EButtonConfiguration())
    }
}


#Preview {
    EButton(title: "Button Preview") {
        print("Button Pressed")
    }
}
