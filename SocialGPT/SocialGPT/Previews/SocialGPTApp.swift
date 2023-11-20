//
//  GPTSocial.swift
//  SocialGPT
//
//  Created by Admin on 11/17/23.
//

import SwiftUI

@main
struct SocialGPTApp: App {
    
    @ObservedObject var appState: AppState = AppState()
    
    var body: some Scene {
        WindowGroup {
            if appState.isLoggedIn {
                NavigationStack(path: $appState.navigationPath) {
                    ChatListView()
                        .environmentObject(appState)
                }
                
            } else {
                AuthView()
                    .environmentObject(appState)
            }
            
        }
    }
}
