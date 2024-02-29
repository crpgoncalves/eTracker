//
//  View+Extensions.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 29/02/2024.
//

import Foundation
import SwiftUI
extension View {
    
    func embedInNavigationView() -> some View {
        NavigationView { 
            self
        }.navigationBarBackButtonHidden()
    }
    
}
