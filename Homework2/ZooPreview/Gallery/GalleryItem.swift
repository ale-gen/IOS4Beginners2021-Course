//
//  GalleryItem.swift
//  ZooPreview
//
//  Created by Aleksandra Generowicz on 17/11/2021.
//

import SwiftUI

struct GalleryItem: View {
    
    let image: String
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .cornerRadius(20)
                .padding(24)
                .padding(.top, 5)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
            if let lastChar = image.last, let index = Int(String(lastChar)) {
                Text("\(Image(systemName: "photo")) \(index - 1)")
                    .font(.subheadline)
                    .padding([.leading, .top], 10)
            }
        }
        
    }
}

struct GalleryItem_Previews: PreviewProvider {
    static var previews: some View {
        GalleryItem(image: "goat_2")
    }
}
