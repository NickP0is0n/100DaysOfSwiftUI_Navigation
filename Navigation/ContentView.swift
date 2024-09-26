//
//  ContentView.swift
//  Navigation
//
//  Created by Mykola Chaikovskyi on 24.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Hello!")
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Tap me!") {
                            // button action code
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Tap me 2!") {
                            // button action code
                        }
                    }
                }
                .navigationBarBackButtonHidden()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
