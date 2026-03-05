//
//  FolderModel.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-04.
//

import Foundation

struct FolderModel: Codable {
    var name: String
    var type: FileType
    var children: [FileSystemItem?]
    
    enum CodingKeys: String, CodingKey {
        case name
        case type = "file_type"
        case children
    }
}

