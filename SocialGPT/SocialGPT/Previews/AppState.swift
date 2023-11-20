//
//  AppState.swift
//  SocialGPT
//
//  Created by Admin on 11/17/23.
//

import Foundation
import FirebaseAuth
import SwiftUI
import Firebase

class AppState: ObservableObject {
    
    @Published var currentUser: User?
    @Published var navigationPath = NavigationPath()
    var isLoggedIn: Bool {
        return currentUser != nil
    }
    
    init() {
        FirebaseApp.configure()
        
        if let currentUser = Auth.auth().currentUser {
            self.currentUser = currentUser
        }
    }
}
