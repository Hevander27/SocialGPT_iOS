//
//  ProfileView.swift
//  SocialGPT
//
//  Created by Admin on 11/18/23.
//

import SwiftUI

struct ProfileView: View {
    @State var apiKey: String = UserDefaults.standard.string(forKey: "openai_api_key") ?? ""
    var body: some View {
        List {
            Section("OpenAI API Key") {
                TextField("Enter key", text: $apiKey) {
                    UserDefaults.standard.set(apiKey, forKey: "openai_api_key")
                }
            }
        }
    }
}

struct ProfileView_Preview: PreviewProvider {
    static var previews: some View {
        ProfileView()
            //.environmentObject(AppState())
    }
    
}
