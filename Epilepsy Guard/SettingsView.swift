//
//  SettingsView.swift
//  Epilepsy Guard
//
//  Created by Teo Wen Kai on 9/2/25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Form {
                HStack {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 60, height:60)
                    
                    Spacer()
                        .frame(width: 20)
                    
                    VStack {
                        Text("**<Name>**")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Epilepsy Guard Account")
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                }
                
                Section(header: Text("CONTENT"), content: {
                    HStack {
                        Image(systemName: "figure.stand")
                        Text("Personal Information")
                    }
                })

                
            }
            .navigationBarTitle("App Settings")
        }
    }
}

#Preview {
    SettingsView()
}
