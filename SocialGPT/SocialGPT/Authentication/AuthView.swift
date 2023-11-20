//
//  AuthView.swift
//  SocialGPT
//
//  Created by Admin on 11/17/23.
//

import SwiftUI
import Foundation

struct AuthView: View {
    @ObservedObject var viewModel: AuthViewModel = AuthViewModel()
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            Text("ChatGPT iOS App")
                .font(.title)
                .bold()
            
            TextField("Email", text: $viewModel.emailText)
                .padding()
                .background(Color.gray.opacity(0.1))
                .textInputAutocapitalization(.never)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            if viewModel.isPasswordVisible {
                SecureField("Passowrd", text: $viewModel.passwordText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .textInputAutocapitalization(.never)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            if viewModel.isLoading {
                ProgressView()
             }else {
                Button {
                    viewModel.authenticate(appState: appState)
                    //
                } label: {
                    Text(viewModel.userExists ?"Login in": "Create User")
                }
                .padding()
                .foregroundStyle(.white)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            }

        }
        .padding()
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
