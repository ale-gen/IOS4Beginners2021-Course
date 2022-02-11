//
//  ContentView.swift
//  SwiftUIDataFlow
//
//  Created by Rafał Kwiatkowski on 22/11/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var timerModel: TimerModel
    @State var backgroundColors = [Color.red, Color.purple]
    @State var selectedColor: Color = Color.black
    @State var itemColors = [ColorConfigurationView.ConfigItem.timeText: Color.black, ColorConfigurationView.ConfigItem.circle: Color.gray, ColorConfigurationView.ConfigItem.backgroundPrimary: Color.red, ColorConfigurationView.ConfigItem.backgroundSecondary: Color.purple]
    @State var isPrimaryBackground = true;

	var body: some View {
		VStack(spacing: 0) {
            TimerView(circleColor: itemColors[ColorConfigurationView.ConfigItem.circle] ?? Color.orange)
                .foregroundColor(itemColors[ColorConfigurationView.ConfigItem.timeText])
                .onChange(of: timerModel.time, perform: { time in
                    withAnimation {
                        isPrimaryBackground.toggle()
                    }
                })
                .background((isPrimaryBackground ? itemColors[ColorConfigurationView.ConfigItem.backgroundPrimary] : itemColors[ColorConfigurationView.ConfigItem.backgroundSecondary]).edgesIgnoringSafeArea(.top))
			Form {
				Section("Color configurator") {
                    ColorConfigurationView(itemColors: $itemColors, selectedColor: $selectedColor)
					
                    ColorPicker("Pick the color", selection: $selectedColor)
						.padding()
				}
				Button("Start the count!") {
                    timerModel.start()
				}
				.buttonStyle(.borderless)
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
