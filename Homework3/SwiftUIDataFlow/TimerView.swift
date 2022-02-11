//
//  TimerView.swift
//  SwiftUIDataFlow
//
//  Created by Rafał Kwiatkowski on 22/11/2021.
//

import SwiftUI

struct TimerView: View {
    @EnvironmentObject var timerModel: TimerModel
    let circleColor: Color
    
	var body: some View {
		VStack(spacing: 16) {
            Text((timerModel.referenceTime..<timerModel.time).formatted(.timeDuration))
				.font(.largeTitle)
				.padding(44)
                .background(Circle().stroke(circleColor, lineWidth: 6)) //TODO: Pass circle color
				.padding(.top, 48)
            Stepper {
                Text("Set Timer")
            } onIncrement: {
                timerModel.time += 1
            } onDecrement: {
                timerModel.decrementTime()
            }
        .padding(24)
		}
	}
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(circleColor: .gray)
    }
}
