//
//  OpponentView.swift
//  Homework_idea
//
//  Created by Rafał Kwiatkowski on 29/11/2021.
//

import SwiftUI

struct OpponentView: View {
	
	@State var isShaking: Bool = true
	let opponentValue: String
	
	var body: some View {
		ZStack {
			Color.red
            Text(opponentValue)
				.font(.largeTitle)
				.rotationEffect(isShaking ? .init(degrees: -30) : .init(degrees: 30))
				.offset(x: isShaking ? -30 : 30)
				.animation(.default.repeatForever(autoreverses: true), value: isShaking)
			.onAppear { isShaking.toggle() }
		}
	}
}

struct OpponentView_Previews: PreviewProvider {
	static var previews: some View {
		OpponentView(opponentValue: "🪨")
	}
}
