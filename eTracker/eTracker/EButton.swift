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
    @State private var selected = false
    let title: String
    var body: some View {
        VStack {
            Text(title).foregroundColor(.white)

        }
        .frame(width: 325, height: 60)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30))
        .shadow(color: Color(#colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)).opacity(selected ? 0.6 : 0.3), radius: selected ? 20 : 10, x: 0, y: selected ? 10 : 20)
        .scaleEffect(selected ? 1.2 : 1)
        .animation(.spring(response: 0.4, dampingFraction: 0.6), value: selected ? 1 : 0)
//        .onTapGesture {
//            selected = true
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//                selected = false
//            }
//        }
    }
}


#Preview {
    EButton(title: "Button Preview")
}
