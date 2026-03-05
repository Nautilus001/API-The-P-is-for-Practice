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

protocol FileEntityModel: Codable {
    var name: String {get set}
    var type: FileType {get set}
}

extension FileEntityModel {
    mutating func rename(_ name: String) {
        self.name = name
    }
}
