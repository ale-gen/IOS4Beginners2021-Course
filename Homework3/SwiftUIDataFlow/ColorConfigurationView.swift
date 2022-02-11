	//
	//  ColorConfigurationView.swift
	//  SwiftUIDataFlow
	//
	//  Created by Rafał Kwiatkowski on 22/11/2021.
	//

import SwiftUI

struct ColorConfigurationView: View {
    @Binding var itemColors: [ConfigItem: Color]
    @State var selectedItem: ConfigItem = ConfigItem.timeText
    @Binding var selectedColor: Color
	
	var body: some View {
		Picker("Pick item to configure", selection: $selectedItem) { // TODO: pass selection state
            ForEach(ConfigItem.allCases, id: \.self) { config in
				ColorConfigurationView.ConfigurationRow(
                    selectedItem: $selectedItem,
                    config: config,
                    value: itemColors[config] ?? Color.gray // TODO: Pass this data
				)
                    .onChange(of: selectedColor) { _ in
                        self.itemColors[selectedItem] = selectedColor
                    }
                    .onChange(of: selectedItem) { newValue in
                        selectedColor = itemColors[selectedItem] ?? Color.black
                    }
			}
		}
		.pickerStyle(.inline)
	}

	enum ConfigItem: String, CaseIterable {
		case timeText = "Time text"
		case circle = "Circle"
		case backgroundPrimary = "Primary background"
		case backgroundSecondary = "Secondary background"
	}

	private struct ConfigurationRow: View {
        @Binding var selectedItem: ConfigItem
		let config: ConfigItem
		let value: Color
		
		var body: some View {
			HStack {
				RoundedRectangle(cornerRadius: 4)
					.fill(value)
					.frame(width: 24, height: 24)
				Text(config.rawValue)
				Spacer()
			}.id(config)
                .onTapGesture {
                    selectedItem = config
                }
		}
	}
}

struct ColorConfigurationView_Previews: PreviewProvider {
	static var previews: some View {
        ColorConfigurationView(itemColors: .constant([ColorConfigurationView.ConfigItem.timeText: Color.red]), selectedColor: .constant(.gray))
	}
}
