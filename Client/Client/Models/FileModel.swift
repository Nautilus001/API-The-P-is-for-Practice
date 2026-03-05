//
//  FileModel.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-04.
//

import Foundation

struct FileModel: FileEntity, Codable {    
    var id: UUID = UUID()
    var name: String
    var type: FileType
    var timestamp: Date
    var size: Int
}
