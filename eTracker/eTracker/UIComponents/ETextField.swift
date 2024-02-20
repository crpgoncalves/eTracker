//
//  ETextField.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 15/02/2024.
//

import SwiftUI


struct CustomTFViewModifier: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        content
            .padding()
            .cornerRadius(15)
            .overlay(RoundedRectangle(cornerRadius: 15)
                .stroke(StringValidator.colorFromState(text.validationState()), lineWidth: 1.5))
            .shadow(radius: 10)
    }
}

extension TextField   {
    func validate(_ flag : @escaping ()-> Bool) -> some View {
        self
            .modifier(ValidationModifier(validation: flag))
    }
}

extension SecureField   {
    func validate(_ flag : @escaping ()-> Bool) -> some View {
        self
            .modifier(ValidationModifier(validation: flag))
    }
}

struct ValidationPreferenceKey : PreferenceKey {
    static var defaultValue: [Bool] = []
    
    static func reduce(value: inout [Bool], nextValue: () -> [Bool]) {
        value += nextValue()
    }
}

struct ValidationModifier : ViewModifier  {
    let validation : () -> Bool
    func body(content: Content) -> some View {
        content
            .preference(
                key: ValidationPreferenceKey.self,
                value: [validation()]
            )
    }
}
