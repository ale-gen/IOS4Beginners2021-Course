//
//  FanFactsSection.swift
//  ZooPreview
//
//  Created by Aleksandra Generowicz on 16/11/2021.
//

import SwiftUI

struct FanFactsSection: View {
    let goat: Goat
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("\(Image(systemName: "brain")) Fun Facts")
                    .font(.headline)
                    .padding([.leading], 16)
            FunFactsList(funFacts: goat.funFacts)
                .padding([.leading, .trailing], 24)
        }
        .padding([.bottom], 8)
        
    }
}

struct FanFactsSection_Previews: PreviewProvider {
    static var previews: some View {
        FanFactsSection(goat: goatGotenks)
    }
}
