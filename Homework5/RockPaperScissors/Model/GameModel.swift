//
//  GameModel.swift
//  RockPaperScissors
//
//  Created by RafaΕ Kwiatkowski on 29/11/2021.
//

import Foundation

protocol GameModel {
    var opponentOption: RockPaperScissors.Option { get }
    var playerOption: RockPaperScissors.Option { get }
    var opponentScore: Int { get }
    var playerScore: Int { get }
    var gameResult: RockPaperScissors.Result? { get }
    var gameState: RockPaperScissors.GameState { get }
    
    func checkWhoWon()
    func updateOpponentOption() -> RockPaperScissors.Option
    func updatePlayerOption(playerChoice: String)
    func resetToNextRound()
    func getPossibleOptionsForPlayer() -> [RockPaperScissors.Option]
}

class RockPaperScissors: GameModel {
    private(set) var opponentScore: Int = 0
    private(set) var playerScore: Int = 0
    private(set) var opponentOption: Option = .hidden
    private(set) var playerOption: Option = .none
    private(set) var victories: [Option: Option] = [.rock: .scissors, .scissors: .paper, .paper: .rock]
    private(set) var gameResult: Result?
    private(set) var gameState: GameState = .fight
    
    enum Option: String {
        case rock = "πͺ¨"
        case scissors = "βοΈ"
        case paper = "π"
        case hidden = "β"
        case none = ""
    }
    
    enum Result: String {
        case won = "You won π"
        case lose = "You lost π­"
        case tie = "It's a tie π"
    }
    
    enum GameState {
        case fight
        case finished
    }
    
    func checkWhoWon() {
        if (opponentOption == playerOption) {
            gameResult = .tie
        } else if (victories[playerOption] == opponentOption) {
            gameResult = .won
            playerScore += 1
        } else {
            gameResult = .lose
            opponentScore += 1
        }
        gameState = .finished
    }
    
    func updateOpponentOption() -> Option {
        let choice = Int.random(in: 0...2)
        if choice == 0 {
            opponentOption = .rock
        } else if choice == 1 {
            opponentOption = .paper
        } else {
            opponentOption = .scissors
        }
        return opponentOption
    }
    
    func updatePlayerOption(playerChoice: String) {
        switch playerChoice {
        case "πͺ¨": playerOption = .rock
        case "π": playerOption = .paper
        case "βοΈ": playerOption = .scissors
        default: playerOption = .none
        }
    }
    
    func resetToNextRound() {
        playerOption = .none
        opponentOption = .hidden
        gameResult = nil
        gameState = .fight
    }
    
    func getPossibleOptionsForPlayer() -> [Option] {
        return [.rock, .paper, .scissors]
    }
}
