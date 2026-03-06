//
//  FileNodeView.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-06.
//

import SwiftUI

struct FileLevelView: View {
    let nodes: [FileNode]
    let viewModel: FolderViewModel
    
    var body: some View {
        List(nodes) { child in
            NavigationLink(value: child) {
                HStack {
                    Image(viewModel.getImage(child)).padding()
                    Text(child.name)
                }
            }
        }
    }
}
