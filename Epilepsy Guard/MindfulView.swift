//
//  MindfulView.swift
//  Epilepsy Guard
//
//  Created by Teo Wen Kai on 8/2/25.
//

import SwiftUI

struct MindfulView: View {
    var body: some View {
        VStack {
            Image(systemName: "figure.mind.and.body")
                .resizable()
                .frame(width: 200, height: 175)
                .foregroundStyle(Color.purple)
                .padding()
            Text("Start a mindful breathing session.")
                .font(.title2)
            
            Spacer()
                .frame(height: 30)
            
            Text("Duration: 5 mins")
            
            Spacer()
                .frame(height: 100)
                
            Button(action: {}) {
                Text("Start Session")
                }
                .buttonStyle(.borderedProminent)
                .frame(width: 150)
                .controlSize(.large)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(20)
            
            Spacer()
                .frame(height: 50)
            
            Button(action: {}) {
                Text("Change Duration")
            }
        }
    }
}

#Preview {
    MindfulView()
}
