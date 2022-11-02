//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Kyle Ferrigan on 10/29/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(Shop())
        }
    }
}
