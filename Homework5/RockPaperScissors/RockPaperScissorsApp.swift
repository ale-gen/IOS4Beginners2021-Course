//
//  RockPaperScissorsApp.swift
//  RockPaperScissors
//
//  Created by Rafał Kwiatkowski on 29/11/2021.
//

import SwiftUI

@main
struct RockPaperScissorsApp: App {
	
	let viewModel = GameViewModel(model: RockPaperScissors())
	
	var body: some Scene {
		WindowGroup {
			GameView()
				.environmentObject(viewModel)
		}
	}
}
