//
//  FolderModel.swift
//  Client
//
//  Created by Justin Bushfield on 2026-03-04.
//

import Foundation

struct FolderModel: FileEntityModel {
    var name: String
    var type: FileType
    var children: [FileEntityModel?]
    
    mutating func appendChild(_ child: FileEntityModel) {
        self.children.append(child)
    }
}

