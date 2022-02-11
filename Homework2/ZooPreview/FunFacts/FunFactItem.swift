//
//  FunFact.swift
//  ZooPreview
//
//  Created by Aleksandra Generowicz on 16/11/2021.
//

import SwiftUI

struct FunFactItem: View {
    let fact: Goat.FunFact
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 10, height: 10)
                .padding([.top], 5)
            Text(fact)
        }
    }
}

struct FunFact_Previews: PreviewProvider {
    static var previews: some View {
        FunFactItem(fact: "Goats can be taught their name and to come when called.")
    }
}
