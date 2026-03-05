//
//  ContentView.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-04.
//

import SwiftUI

struct HomeView: View {
    @State private var viewModel = FolderViewModel()
    var body: some View {
        NavigationStack {
            List {
                Section("Folders"){
                    ForEach( 
                }
                Section ("Files") {
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
