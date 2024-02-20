//
//  String+Validate.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 20/02/2024.
//

import Foundation
import SwiftUI

struct StringValidator {
    enum StringValidationState {
        case empty
        case invalid
        case valid
    }
    
    static func colorFromState(_ state: StringValidationState) -> Color {
        switch state {
        case .empty:
            return .black
        case .invalid:
            return .red
        case .valid:
            return .green
        }
    }
}

extension String {
    func validationState() -> StringValidator.StringValidationState {
        if isEmpty {
            return .empty
        }
        
        if contains("123") {
            return .invalid
        }
        
        return .valid
    }
}
