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

protocol FileEntity: Identifiable {
    var id: UUID { get }
    var name: String { get }
    var type: FileType { get }
}
