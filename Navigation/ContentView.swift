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
            List {
                ForEach(0..<5) { i in
                    NavigationLink("Select number: \(i)", value: i)
                }
                
                ForEach(0..<5) { i in
                    NavigationLink("Select string: \(i)", value: String(i))
                }
            }
            .navigationDestination(for: Int.self) { selection in
                 Text("You have selected the \(selection) number")
            }
            .navigationDestination(for: String.self) { selection in
                Text("You have selected the \(selection) string") 
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
