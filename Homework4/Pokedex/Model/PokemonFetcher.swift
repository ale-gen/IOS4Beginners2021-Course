//
//  PokemonFetcher.swift
//  Pokedex
//
//  Created by Aleksandra Generowicz on 08/12/2021.
//

import Foundation
import SwiftUI

protocol PokemonFetcher {
    func pokemon(id: Int) async throws -> Pokemon
    func pokemonImage(for id: Int) async throws -> UIImage
    func catchPokemon(id: Int) async throws -> Pokemon
}

enum FetcherError: Error {
    case invalidURL
    case invalidData
    case invalidImage
}

class PokemonFetcherImpl: PokemonFetcher {

    private let session: URLSession
    private let deviceUUID: String
    
    init() {
        self.session = URLSession(configuration: .ephemeral)
        self.deviceUUID = UIDevice.current.identifierForVendor?.uuidString ?? "unknown_identifier"
    }
    
    func pokemon(id: Int) async throws -> Pokemon {
        let urlString = "https://switter.app.daftmobile.com/api/pokemon/\(id)"
        guard let url = URL(string: urlString) else { throw FetcherError.invalidURL }
        let request = createRequest(url: url, method: "GET")
        let (data, _) = try await session.data(for: request)
        guard let pokemon = try? JSONDecoder().decode(Pokemon.self, from: data) else { throw FetcherError.invalidData }
        return pokemon
    }
    
    func pokemonImage(for id: Int) async throws -> UIImage {
        let urlString = "https://switter.app.daftmobile.com/api/pokemon/\(id)/image"
        guard let url = URL(string: urlString) else { throw FetcherError.invalidURL }
        let request = createRequest(url: url, method: "GET")
        let (data, _) = try await session.data(for: request)
        guard let newImage = UIImage(data: data) else { throw FetcherError.invalidImage }
        return newImage
    }
    
    func catchPokemon(id: Int) async throws -> Pokemon {
        let urlString = "https://switter.app.daftmobile.com/api/pokemon/\(id)/catch"
        guard let url = URL(string: urlString) else { throw FetcherError.invalidURL }
        let request = createRequest(url: url, method: "POST")
        let (data, _) = try await session.data(for: request)
        guard let pokemon = try? JSONDecoder().decode(Pokemon.self, from: data) else { throw FetcherError.invalidData }
        return pokemon
    }
    
    private func createRequest(url: URL, method: String?) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = method
        request.addValue(deviceUUID, forHTTPHeaderField: "x-device-uuid")
        return request
    }
    
}
