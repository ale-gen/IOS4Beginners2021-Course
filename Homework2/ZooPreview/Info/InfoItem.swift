//
//  InfoItem.swift
//  ZooPreview
//
//  Created by Aleksandra Generowicz on 16/11/2021.
//

import SwiftUI

struct InfoItem: View {
    let item: Goat.Info
    
    var body: some View {
        VStack(spacing: 4) {
            Text(item.label)
            Text(item.value)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct InfoItem_Previews: PreviewProvider {
    static var previews: some View {
        InfoItem(item: .init(label: "Age", value: "8 years"))
    }
}
