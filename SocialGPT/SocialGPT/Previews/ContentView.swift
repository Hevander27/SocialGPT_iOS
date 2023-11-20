//
//  ContentView.swift
//  SocialGPT
//
//  Created by Admin on 11/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

struct Context_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
