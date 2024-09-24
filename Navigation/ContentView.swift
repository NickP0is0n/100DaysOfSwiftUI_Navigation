//
//  ContentView.swift
//  Navigation
//
//  Created by Mykola Chaikovskyi on 24.09.2024.
//

import SwiftUI

struct Student: Hashable {
    var id = UUID()
    var name: String
    var age: Int
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                NavigationLink("Select \(i)", value: i)
            } .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            } .navigationDestination(for: Student.self) { destination in
                Text("This is \(destination.name) (\(destination.age) y.o.)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
