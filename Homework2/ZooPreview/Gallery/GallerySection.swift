//
//  GallerySection.swift
//  ZooPreview
//
//  Created by Aleksandra Generowicz on 17/11/2021.
//

import SwiftUI

struct GallerySection: View {
    let goat: Goat
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: "photo")
                Text("Gallery")
                    .font(.headline)
            }
            GalleryList(images: goat.images)
        }
        .padding([.leading], 16)
    }
}

struct GallerySection_Previews: PreviewProvider {
    static var previews: some View {
        GallerySection(goat: goatGotenks)
    }
}
