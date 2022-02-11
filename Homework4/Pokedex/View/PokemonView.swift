//
//  ContentView.swift
//  Pokedex
//
//  Created by Aleksandra Generowicz on 08/12/2021.
//

import SwiftUI

struct PokemonView: View {
    @EnvironmentObject var viewModel: PokemonViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.isReady ? "\(viewModel.pokemonNumber)" : "")
                .font(.system(size: 25))
                .foregroundColor(.white)
                .bold()
                .padding(.top, 50)
            Image(uiImage: viewModel.pokemonImage)
                .padding([.top, .bottom], 50)
            Text(viewModel.pokemonName)
                .font(.title)
                .foregroundColor(.white)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(viewModel.pokemonColor).edgesIgnoringSafeArea(.all)
        .onTapGesture(count: 2) {
            viewModel.incrementId()
        }
        .onTapGesture(count: 1) {
            viewModel.decrementId()
        }
        .gesture(
            DragGesture()
            .onEnded { _ in
                withAnimation {
                    viewModel.pokemonCought()
                }
            })
        .alert(viewModel.errorMessage ?? "", isPresented: $viewModel.isShowingError, actions: {})
        .overlay(loadingOverlay)
    }
    
    @ViewBuilder
        private var loadingOverlay: some View {
            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                    .padding(50)
                    .background(.regularMaterial)
                    .mask(RoundedRectangle(cornerRadius: 8))
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView()
            .environmentObject(PokemonViewModel(fetcher: PokemonFetcherImpl()))
    }
}
