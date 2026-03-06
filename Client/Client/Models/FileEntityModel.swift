//
//  FileEntity.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-04.
//

import Foundation

enum FileType: String, Codable {
    case image
    case text
    case folder
}

class FileNode: Hashable, Identifiable, Codable {
    
    var id: UUID = UUID()
    let name: String
    let size: Int?
    let type: FileType?
    weak var parent: FileNode?
    var children: [FileNode] = []
    
    static func == (lhs: FileNode, rhs: FileNode) -> Bool {
        lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    init(from box: Box, parent: FileNode? = nil) {
        self.name = box.name
        self.size = box.size
        self.type = box.file_type
        self.parent = parent
        
        // Recursively convert children
        self.children = box.children?.map { FileNode(from: $0, parent: self) } ?? []
    }
    
    var fullPath: String {
        if let parentPath = parent?.fullPath {
            return "\(parentPath)/\(name)"
        }
        return name
    }
}
