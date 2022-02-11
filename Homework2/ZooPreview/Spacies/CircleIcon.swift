//
//  CircleIcon.swift
//  ZooPreview
//
//  Created by Aleksandra Generowicz on 18/11/2021.
//

import SwiftUI

struct CircleIcon: View {
    var body: some View {
        Circle()
            .stroke(Color.gray, lineWidth: 1)
            .frame(width: 55, height: 55, alignment: .leading)
            .background(Circle().fill(Color(UIColor.secondarySystemBackground)))
            .shadow(color: Color.black, radius: 3, x: 0, y: 0)
            .overlay(
                Text("🐐")
                    .font(.system(size: 40))                   
            )
    }
}

struct CircleIcon_Previews: PreviewProvider {
    static var previews: some View {
        CircleIcon()
    }
}
