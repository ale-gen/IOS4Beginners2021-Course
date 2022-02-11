//
//  InfoSection.swift
//  ZooPreview
//
//  Created by Aleksandra Generowicz on 16/11/2021.
//

import SwiftUI

struct InfoSection: View {
    let goat: Goat
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
           Text("\(Image(systemName: "info.circle.fill")) Info")
                .font(.headline)
            InfoList(info: goat.info)
            
        }
        .padding([.leading, .trailing], 16)
        .padding([.bottom], 24)
    }
}

struct InfoSection_Previews: PreviewProvider {
    static var previews: some View {
        InfoSection(goat: goatGotenks)
    }
}
