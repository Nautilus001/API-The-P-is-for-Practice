//
//  Box.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-05.
//


struct Box: Codable {
    let name: String
    let size: Int?
    let file_type: FileType?
    let children: [Box]?
}
