//
//  Pokemon.swift
//  Pokedex
//
//  Created by Aleksandra Generowicz on 08/12/2021.
//

import Foundation
import SwiftUI

class Pokemon: Codable {
    let name: String
    let number: Int
    let color: Int
}

extension Pokemon {
    var colorValue: Color { .init(hex: color) }
}
