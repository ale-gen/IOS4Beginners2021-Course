//
//  PlayerView.swift
//  Homework_idea
//
//  Created by Rafał Kwiatkowski on 29/11/2021.
//

import SwiftUI

struct PlayerView: View {
	@Namespace private var pickingNamespace
    @Binding var selection: String
    let values: [String]
	
    var body: some View {
		ZStack {
			Color.blue
			VStack {
				Spacer()
				if let value = selection {
                    Text(value)
						.font(.largeTitle)
						.matchedGeometryEffect(id: value, in: pickingNamespace)
				}
				Spacer()
				HStack(spacing: 50) {
					ForEach(values, id: \.self) { value in
						if selection != value {
                            Text(value)
								.matchedGeometryEffect(id: value, in: pickingNamespace)
								.onTapGesture {
									withAnimation { selection = value }
								}
							
						}
					}
				}.font(.largeTitle)
				.padding(.horizontal)
				.padding(.bottom)
			}
		}
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(selection: .constant(""), values: ["🪨", "✂️", "📜"])
    }
}
