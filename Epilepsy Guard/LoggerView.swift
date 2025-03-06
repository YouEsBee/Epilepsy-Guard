//
//  LoggerView.swift
//  Epilepsy Guard
//
//  Created by Teo Wen Kai on 9/2/25.
//

import SwiftUI

struct LoggerView: View {
    
    @State private var selectedEmotion = 2
    @State private var navigate = false
    @State private var otherEmotion = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hi <Name>,")
                    .font(.title)
                
                Spacer()
                    .frame(height: 10)
                
                Text("How are you feeling?")
                    .font(.title)
                
                Spacer()
                    .frame(height: 30)
                
                Text("Choose the emotion that best fits\nhow you feel now.")
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                    .frame(height: 30)
                
                Picker("", selection: $selectedEmotion) {
                    Text("Tired 🥱").tag(0)
                    Text("Happy 😁").tag(1)
                    Text("Fine 🙂").tag(2)
                    Text("Stressed 😩").tag(3)
                    Text("Anxious 😬").tag(4)
                    Text("Other").tag(5)
                }
                .pickerStyle(.wheel)
                .padding()
                
                if selectedEmotion == 5 {
                    // if other, insert textfield
                    TextField("Enter how you feel now", text: $otherEmotion)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                
                Spacer()
                    .frame(height: 50)
                
                Button(action: {
                    navigate = true
                }) {
                    Text("Log epilepsy")
                    }
                    .buttonStyle(.borderedProminent)
                    .frame(width: 150)
                    .controlSize(.large)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(20)

            }
            .navigationDestination(isPresented: $navigate) {
                Intensity_LoggerView()
            }
            
        }
        
    }
}


#Preview {
    LoggerView()
}
