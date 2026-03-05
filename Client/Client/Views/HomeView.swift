//
//  ContentView.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-04.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("folder_icon")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("DocuRoam")
                    .font(.largeTitle)
                Spacer()
                    .frame(height:100)
                Button ("Get Started") {
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
