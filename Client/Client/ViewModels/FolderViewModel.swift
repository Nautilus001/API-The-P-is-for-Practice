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


func getFolder () async throws -> FolderModel {
    let endpoint = ""
    
    guard let url = URL(string: endpoint) else {
        throw ServerError.invalidURL
    }
    
    let (data, response) = try await URLSession.shared.data(from: url)
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        throw ServerError.badResponse
    }
    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(FolderModel.self, from: data)
    } catch {
        throw ServerError.badJSON
    }
}

enum ServerError: Error {
    case invalidURL
    case badResponse
    case badJSON
}
