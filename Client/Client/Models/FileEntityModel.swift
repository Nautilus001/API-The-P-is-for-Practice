//
//  FileEntity.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-04.
//

import Foundation

enum FileType: String, Codable {
    case image
    case video
    case folder
}

protocol FileEntityModel {
    var name: String {get set}
    var type: FileType {get set}
    
    mutating func rename(_ name: String)
}

extension FileEntityModel {
    mutating func rename(_ name: String) {
        self.name = name
    }
}
