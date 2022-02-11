//
//  ContentView.swift
//  ZooPreview
//
//  Created by Rafał Kwiatkowski on 12/11/2021.
//

import SwiftUI

struct ContentView: View {
	
	let goat = goatGotenks
	
    var body: some View {
		ScrollView {
			BouncingHeaderView {
				Image(goat.mainImage)
					.resizable()
					.scaledToFill()
			}
			.frame(height: 300)
            SpaciesTitle(goat: goat)
            InfoSection(goat: goat)
            FanFactsSection(goat: goat)
            GallerySection(goat: goat)
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
