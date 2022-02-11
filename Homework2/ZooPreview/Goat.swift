//
//  Goat.swift
//  ZooPreview
//
//  Created by Rafał Kwiatkowski on 13/11/2021.
//

import Foundation

let goatGotenks = Goat(
	name: "Gotenks",
	subtitle: "The escape goat",
	mainImage: "goat_1",
	info: [
		.init(label: "Age", value: "8 years"),
		.init(label: "Color", value: "Dirty white"),
		.init(label: "Birth place", value: "Dublin"),
		.init(label: "Breed", value: "Old Irish Goats")
	],
	funFacts: [
		"Goats can be taught their name and to come when called.",
		"""
		Each goat has a unique call, and along with its scent, \
		that is how its mother recognises it from birth \
		– not by sight.
		""",
		"""
		Goats’ pupils (like many hooved animals) are rectangular. \
		This gives them vision for 320 to 340 degrees (compared \
		to humans with 160-210) around them without having to \
		move and they are thought to have excellent night vision.
		"""
	],
	images: Array(2...8).map { "goat_\($0)" }
)


struct Goat: Equatable {
	let name: String
	let subtitle: String
	let mainImage: String
	let info: [Info]
	let funFacts: [FunFact]
	let images: [String]
	
	
	struct Info: Hashable {
		let label: String
		let value: String
	}
	
	typealias FunFact = String
}
