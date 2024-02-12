//
//  NavigationHelper.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import Foundation
import SwiftUI

final class NavigationHelper: ObservableObject {
    
    public enum Destination: Codable, Hashable {
        case createPlan
        case loadPlan
    }
    
    @Published var path = NavigationPath()

//    func clear() {
//        path = .init()
//    }
    
    func navigateBackToRoot() {
        path.removeLast(path.count)
    }
    
    func backToPrevious() {
        path.removeLast()
    }
    
    func navigateTo(_ destination: Destination) {
        path.append(destination)
    }

//    func done() {
//        path = .init()
//    }
}
