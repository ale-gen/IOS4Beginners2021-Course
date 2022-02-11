//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by Aleksandra Generowicz on 08/12/2021.
//

import Foundation
import SwiftUI

@MainActor
class PokemonViewModel: ObservableObject {
    
    @Published var pokemonName: String = ""
    @Published var pokemonNumber: Int = 1
    @Published var pokemonImage: UIImage = UIImage()
    @Published var isReady: Bool = false
    @Published var pokemonColor: Color = Color(hex: 7237230)
    @Published var errorMessage: String? { didSet { isShowingError = errorMessage != nil } }
    @Published var isLoading: Bool = false
    @Published var isShowingError: Bool = false
    
    private let fetcher: PokemonFetcher
    private var task: Task<(), Never>?
    
    init(fetcher: PokemonFetcher) {
        self.fetcher = fetcher
        nextPokemonTapped()
    }
    
    func incrementId() {
        pokemonNumber += 1
        nextPokemonTapped()
    }
    
    func decrementId() {
        if (pokemonNumber > 1) {
            pokemonNumber -= 1
            nextPokemonTapped()
        }
    }
    
    func nextPokemonTapped() {
        task = Task {
            do {
                isLoading = true
                let newPokemon = try await fetcher.pokemon(id: pokemonNumber)
                let newPokemonImage = try await fetcher.pokemonImage(for: pokemonNumber)
                withAnimation {
                    isReady = true
                    self.pokemonImage = newPokemonImage
                    self.pokemonName = newPokemon.name
                    self.pokemonNumber = newPokemon.number
                    self.pokemonColor = newPokemon.colorValue
                }
            } catch let error {
                self.errorMessage = error.localizedDescription
            }
            isLoading = false
        }
    }
    
    func pokemonCought() {
        task = Task {
            do {
                isLoading = true
                let newPokemon = try await fetcher.catchPokemon(id: pokemonNumber)
                let newPokemonImage = try await fetcher.pokemonImage(for: pokemonNumber)
                withAnimation {
                    self.pokemonImage = newPokemonImage
                    self.pokemonName = newPokemon.name
                    self.pokemonNumber = newPokemon.number
                    self.pokemonColor = newPokemon.colorValue
                }
            } catch let error {
                self.errorMessage = error.localizedDescription
            }
            isLoading = false
        }
    }
}
