//
//  GameViewModel.swift
//  RockPaperScissors
//
//  Created by Rafał Kwiatkowski on 29/11/2021.
//

import Foundation

class GameViewModel: ObservableObject {
    
	init(model: GameModel) {
		self.model = model
        playerScore = model.playerScore
        opponentScore = model.opponentScore
        playerOption = model.playerOption.rawValue
        opponentOption = model.opponentOption.rawValue
        gameResult = model.gameResult?.rawValue
        isFight = model.gameState == .fight ? true : false
        possibleOptions = model.getPossibleOptionsForPlayer().map({ playerOption in
            playerOption.rawValue
        })
	}
    
    let possibleOptions: [String]
    
	private let model: GameModel
    @Published var playerOption: String
    @Published var opponentOption: String
    @Published var playerScore: Int
    @Published var opponentScore: Int
    @Published var gameResult: String?
    @Published var isFight: Bool
    
    func buttonTapped() {
        if (isFight) {
            model.updatePlayerOption(playerChoice: playerOption)
            opponentOption = model.updateOpponentOption().rawValue
            model.checkWhoWon()
            gameResult = model.gameResult?.rawValue
        } else {
            model.resetToNextRound()
            playerScore = model.playerScore
            opponentScore = model.opponentScore
            playerOption = model.playerOption.rawValue
            gameResult = model.gameResult?.rawValue
            opponentOption = model.opponentOption.rawValue
        }
        isFight = model.gameState == .fight ? true : false
    }
}
