//
//  StringTools.swift
//  HelloSwift
//
//  Created by Aleksandra Generowicz on 10/11/2021.
//

import Foundation

class StringTools {
    
    func countOccurrences(character: Character, from: String, caseSensitive: Bool = true) -> Int {
        var searchedCharacter = String(character)
        var searchedText = from
        var count = 0
        
        if !caseSensitive {
            searchedCharacter = String(searchedCharacter).lowercased()
            searchedText = searchedText.lowercased()
        }
        
        searchedText.map { currentChar in
            if searchedCharacter.contains(currentChar) {
                count += 1
            }
        }
        return count;
    }
}
