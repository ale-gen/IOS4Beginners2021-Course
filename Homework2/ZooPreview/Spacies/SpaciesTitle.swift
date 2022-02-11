//
//  SpaciesTitle.swift
//  ZooPreview
//
//  Created by Aleksandra Generowicz on 18/11/2021.
//

import SwiftUI

struct SpaciesTitle: View {
    let goat: Goat
    
    var body: some View {
            HStack(spacing: 15) {
                CircleIcon()
                VStack(alignment: .leading) {
                    Text(goat.name)
                        .font(.title)
                    Text(goat.subtitle)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            .padding([.leading, .top], 16)
            .padding([.bottom], 24)
    }
}

struct SpaciesTitle_Previews: PreviewProvider {
    static var previews: some View {
        SpaciesTitle(goat: goatGotenks)
    }
}
