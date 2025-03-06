//
//  TimeOccured_LoggerView.swift
//  Epilepsy Guard
//
//  Created by Teo Wen Kai on 22/2/25.
//

import SwiftUI

struct TimeOccured_LoggerView: View {
    
    @State private var hour: Int = 0
    @State private var min: Int = 0
    @State private var sec: Int = 0
    
    var body: some View {
        VStack {
            Text("Approximately what time did this happen?")
                .multilineTextAlignment(.center)
                .font(.title2)
                .padding()
            
            Text("Tap clock to edit")
                .font(.caption)
                .foregroundStyle(Color.gray)
            
            PickerViewWithoutIndicator(selection: $hour) {
                ForEach(0...24, id: \.self) {
                     value in
                    Text("\(value)")
                        .tag(value)
                }
            }
        }
    }
}

#Preview {
    TimeOccured_LoggerView()
}

// Helper
struct PickerViewWithoutIndicator<Content: View, Selection: Hashable>: View {
    @Binding var selection: Selection
    @ViewBuilder var content: Content
    var body: some View {
        Picker("", selection: $selection) {
            content
        }
        .pickerStyle(.wheel)
    }
}
