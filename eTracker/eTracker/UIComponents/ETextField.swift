//
//  ETextField.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 15/02/2024.
//

import SwiftUI

struct ETextField: View {
    var placeholder: LocalizedStringKey
    @State var text = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField(placeholder, text: $text)
                .modifier(customViewModifier(roundedCornes: 15))
        }
        .padding()
    }
}

private struct customViewModifier: ViewModifier {
    var roundedCornes: CGFloat
    func body(content: Content) -> some View {
        content
            .padding()
            .cornerRadius(roundedCornes)
            .overlay(RoundedRectangle(cornerRadius: roundedCornes)
                .stroke(.black, lineWidth: 1.5))
            .shadow(radius: 10)
    }
}

#Preview {
    ETextField(placeholder: "Placeholder...")
}
