//
//  SwiftUIDataFlowApp.swift
//  SwiftUIDataFlow
//
//  Created by Rafał Kwiatkowski on 22/11/2021.
//

import SwiftUI

@main
struct SwiftUIDataFlowApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TimerModel())
        }
    }
}
