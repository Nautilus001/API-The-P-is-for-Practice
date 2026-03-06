//
//  FolderViewModel.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-04.
//

import Foundation

// Sources online differ about correct project organization...
// Buuuuut that's not the point of this project so I don't care rn.
// Technically I think this should be in a Repositories or Services dir.

@Observable
class FolderViewModel {
    
    var rootNode: FileNode?
    var isLoading: Bool = false
    var errorMessage: String?
    
    func fetchFiles () async throws -> Void {
        //TODO: Recursion here I think
        let endpoint = "http://127.0.0.1:5000/files"
        
        guard let url = URL(string: endpoint) else {
            throw ServerError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw ServerError.badResponse
        }
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .useDefaultKeys
            let box = try decoder.decode(Box.self, from: data)
            self.rootNode = FileNode(from: box )
        } catch {
            throw ServerError.badJSON
        }
    }
    
    func getChildren(of node: FileNode) -> [FileNode] {
        return node.children
    }
    
    func getImage(_ child: FileNode) -> String{
        switch child.type {
        case .folder:
            return "folder_icon"
        case .image:
            return "image_icon"
        case .text:
            return "text_icon"
        default:
            return "folder_icon"
        }
    }

}

enum ServerError: Error {
    case invalidURL
    case badResponse
    case badJSON
}
