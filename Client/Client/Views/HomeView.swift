//
//  ContentView.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-04.
//

import SwiftUI

struct HomeView: View {
    @State private var viewModel = FolderViewModel()
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            FileLevelView(nodes: viewModel.rootNode?.children ?? [], viewModel: viewModel)
            .navigationTitle(viewModel.rootNode?.name ?? "Files")
            .navigationDestination(for: FileNode.self) { node in
                if node.type == FileType.folder {
                    FileLevelView(nodes: node.children, viewModel: viewModel)
                        .navigationTitle(node.name)
                } else {
                    Text("Previewing \(node.name)")
                }
            }
        }
        .task {
            do{
                try await viewModel.fetchFiles()
            } catch {
                print("Error fetching files: \(error)")
            }
            
        }
    }
}

#Preview {
    HomeView()
}
