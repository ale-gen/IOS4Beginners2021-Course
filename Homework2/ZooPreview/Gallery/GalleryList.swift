//
//  GalleryList.swift
//  ZooPreview
//
//  Created by Aleksandra Generowicz on 17/11/2021.
//

import SwiftUI

struct GalleryList: View {
    let images: [String]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(images, id: \.self) { image in
                    GalleryItem(image: image)
                }
            }
        }
    }
}

struct GalleryList_Previews: PreviewProvider {
    static var previews: some View {
        GalleryList(images: goatGotenks.images)
    }
}
