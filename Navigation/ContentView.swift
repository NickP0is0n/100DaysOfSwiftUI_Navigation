//
//  ContentView.swift
//  Navigation
//
//  Created by Mykola Chaikovskyi on 24.09.2024.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    
    var body: some View {
        Text("Detail View \(number)")
    }
    
    init(number: Int) {
        self.number = number
        print("Creating detail view \(number).")
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Tap me") {
                DetailView(number: 666)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
