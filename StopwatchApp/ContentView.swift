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
            Color.black
                .ignoresSafeArea()
            
            // Second layer (rest of interface)
            VStack {
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // Create a circular button
                HStack {
                    CircleButtonView(buttonColor: Color("Dark Grey"),
                                     label: "Reset",
                                     labelColor: .white)

                    Spacer()
                    
                    CircleButtonView(buttonColor: Color("Dark Green"),
                                     label: "Start",
                                     labelColor: .green)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            
            Text("World Clock")
                .tabItem {
                    Image(systemName: "globe")
                    Text("World Clock")
                }
            
            Text("Alarm")
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Alarm")
                }
            
            ContentView()
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("Stopwatch")
                }
            
            Text("Timer")
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
                }
            
        }
    }
}
