//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Russell Gordon on 2022-11-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // First layer (background)
            Color.yellow
                .ignoresSafeArea()
            
            // Second layer (rest of interface)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
