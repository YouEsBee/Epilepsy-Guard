//
//  ContentView.swift
//  Epilepsy Guard
//
//  Created by Teo Wen Kai on 7/2/25.
//

import SwiftUI

struct ContentView: View {
    
    // To relay info to selected tab
    // By default app launches with tab 0
    @State var selectedTab = 2
    
    var body: some View {
        
        // Argument selection to relay info to selected tab
        TabView(selection: $selectedTab) {
            // Trend View
            TrendView()
                .tabItem {
                    Image(systemName: "chart.line.text.clipboard")
                        .padding()
                    Text("Trends")
                }
                .tag(0)
            
            // Logger View
            LoggerView()
                .tabItem {
                    Image(systemName: "pencil")
                        .padding()
                    Text("Logger")
                }
                .tag(1)
            
            // Medicine View
            MedicineView()
                .tabItem {
                    Image(systemName:"pills")
                        .padding()
                    Text("Medicine")
                }
                .tag(2)
            
            
            // Mindful View
            MindfulView()
                .tabItem {
                    Image(systemName: "figure.mind.and.body")
                        .padding()
                    Text("Mindful")
                }
                .tag(3)
            
            // Settings View
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                        .padding()
                    Text("Settings")
                }
                .tag(4)
        }
    }
}

#Preview {
    ContentView()
}

