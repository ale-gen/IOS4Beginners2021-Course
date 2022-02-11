//
//  InfoList.swift
//  ZooPreview
//
//  Created by Aleksandra Generowicz on 16/11/2021.
//

import SwiftUI

struct InfoList: View {
    let info: [Goat.Info]
    
    var body: some View {
        HStack {
            ForEach(info, id: \.self) { attribute in
                InfoItem(item: attribute)
                if attribute != goatGotenks.info.last {
                    Divider()
                }
            }
        }
    }
}

struct InfoList_Previews: PreviewProvider {
    static var previews: some View {
        InfoList(info: [
            .init(label: "Age", value: "8 years"),
            .init(label: "Color", value: "Dirty white"),
            .init(label: "Birth place", value: "Dublin"),
            .init(label: "Breed", value: "Old Irish Goats")
        ])
    }
}
