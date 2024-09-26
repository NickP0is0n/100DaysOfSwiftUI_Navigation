//
//  ContentView.swift
//  Navigation
//
//  Created by Mykola Chaikovskyi on 24.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var name = "SwiftUI"
    
    var body: some View {
        NavigationStack {
            Text("Hello!")
                .navigationTitle($name)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
