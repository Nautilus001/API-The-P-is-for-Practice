//
//  FileSystemItem.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-05.
//

import Foundation

enum FileSystemItem: Codable{
    case folder(FolderModel)
    case file(FileModel)
    
    enum CodingKeys: String, CodingKey {
        case type
    }
    
    init(from decoder: Decoder) throws {
        do{
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(FileType.self, forKey: .type)
            
            switch type {
            case .image, .text:
                let folder = try FolderModel(from: decoder)
                self = .folder(folder)
            case .folder:
                let file = try FileModel(from: decoder)
                self = .file(file)
            }
        } catch {
            throw JSONError.err
        }
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .folder(let folder): try container.encode(folder)
        case .file(let file): try container.encode(file)
        }
    }
}

enum JSONError : Error {
    case err
}
