//
//  Intensity_LoggerView.swift
//  Epilepsy Guard
//
//  Created by Teo Wen Kai on 15/2/25.
//

import SwiftUI



struct Intensity_LoggerView: View {
    
    @State private var selectedIntensity = 2
    @State private var navigate = false
    
    var body: some View {
        VStack {
            Text("From 1 to 5, how intense was the epilepsy?")
                .multilineTextAlignment(.center)
                .font(.title2)
            
            Spacer()
                .frame(height: 30)
            
            Text("1 being the least intense, 5 being the most intense.")
                .multilineTextAlignment(.center)
                .font(.caption)
                .foregroundStyle(Color.gray)
            
            Picker("", selection: $selectedIntensity) {
                Text("1 - Pre-epileptic feel").tag(0)
                Text("2 - Mild").tag(1)
                Text("3 - Average").tag(2)
                Text("4 - Little Intense").tag(3)
                Text("5 - Intense").tag(4)
                Text("Cannot Recall").tag(5)
            }
            .pickerStyle(.wheel)
            .padding()
            
            
            Button(action: {
                navigate = true
            }) {
                Text("Next")
                }
                .buttonStyle(.borderedProminent)
                .frame(width: 150)
                .controlSize(.large)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(20)
        }
        .navigationDestination(isPresented: $navigate) {
            TimeOccured_LoggerView()
        }
    }
}

#Preview {
    Intensity_LoggerView()
}
