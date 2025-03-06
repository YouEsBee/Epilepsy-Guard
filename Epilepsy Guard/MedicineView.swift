//
//  MedicineView.swift
//  Epilepsy Guard
//
//  Created by Teo Wen Kai on 9/2/25.
//

import SwiftUI

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("**Tue**")
                .font(.body)
                .foregroundStyle(.black)
                .padding()
        }
        .padding()
    }
}

struct MedicineView: View {
    var body: some View {
        VStack {
            // Date
            Text("Today, <date>")
                .font(.title2)
            
            Spacer()
                .frame(height: 20)
            
            // Down arrow pointing to the day
            Image(systemName:"arrowshape.down.fill")
            
            Spacer()
                .frame(height: 20)
            
            // Circle containing day of week
            Image(systemName:"circle.fill")
                .resizable()
                .scaledToFit()
                    .overlay(ImageOverlay(), alignment: .center)
                .frame(width: 100, height: 100)
                .foregroundStyle(Color(red: 0.9, green: 0.9, blue: 0.9))
            
            
            Spacer()
                .frame(height: 30)
            
            // Greets user
            Text("Hi <name>,")
                .font(.title)
            
            Spacer()
                .frame(height: 20)
            
            // Indicate to user if medicine is logged
            Text("Today's <time> medicine\nnot logged yet")
                .font(.title)
                .foregroundColor(.purple)
                .multilineTextAlignment(.center)
            
            Spacer()
                .frame(height: 20)
            
            // Tells user what medicine and qty to take
            HStack {
                Image(systemName:"pills")
                    .resizable()
                    .foregroundStyle(.purple)
                    .frame(width: 40, height: 35)
                    .padding()
                
                Text("<Qty> <Med Name>")
                    .font(.title2)
            }
            
            Spacer()
                .frame(height: 50)
            
            // Button to log medicine as taken
            Button(action: {}) {
                Text("Log as taken")
            }
            .buttonStyle(.borderedProminent)
            .frame(width: 150)
            .controlSize(.large)
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(20)
            
            Spacer()
                .frame(height: 30)
            
            // Button to log as skipped medicine
            Button(action: {}) {
                Text("Skipped")
            }
            
        }
    }
}

#Preview {
    MedicineView()
}
