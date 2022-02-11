//
//  PokedexApp.swift
//  Pokedex
//
//  Created by Aleksandra Generowicz on 08/12/2021.
//

import SwiftUI

@main
struct PokedexApp: App {
    var body: some Scene {
        WindowGroup {
            PokemonView()
                .environmentObject(PokemonViewModel(fetcher: PokemonFetcherImpl()))
        }
    }
}
