//
//  FunFactsList.swift
//  ZooPreview
//
//  Created by Aleksandra Generowicz on 16/11/2021.
//

import SwiftUI

struct FunFactsList: View {
    let funFacts: [Goat.FunFact]
    
    var body: some View {
        VStack(spacing: 8) {
            ForEach(goatGotenks.funFacts, id: \.self) { fact in
                FunFactItem(fact: fact)
                    .listRowSeparator(.hidden)
                    .padding([.trailing], 24)
            }
        }
    }
}

struct FunFactsList_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsList(funFacts: goatGotenks.funFacts)
    }
}
