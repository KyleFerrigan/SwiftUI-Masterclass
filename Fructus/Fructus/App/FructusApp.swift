//
//  FructusApp.swift
//  Fructus
//
//  Created by Kyle Ferrigan on 10/13/22.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding == true{
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
