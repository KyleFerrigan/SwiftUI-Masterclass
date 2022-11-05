//
//  AppView.swift
//  Avacados
//
//  Created by Kyle Ferrigan on 11/5/22.
//

import SwiftUI

struct AppView: View {
	@State private var selection = 2
	var body: some View {
		TabView(selection:$selection){
			AvocadosView()
				.tabItem({
					Image("tabicon-branch")
					Text("Avocados")
				})
				.tag(1)
			ContentView()
				.tabItem({
					Image("tabicon-book")
					Text("Recipes")
				})
				.tag(2)
			RipeningStagesView()
				.tabItem({
					Image("tabicon-avocado")
					Text("Ripening")
				})
				.tag(3)
			SettingsView()
				.tabItem({
					Image("tabicon-settings")
					Text("Settings")
				})
				.tag(4)
		}
		.edgesIgnoringSafeArea(.top)
		.accentColor(Color.primary)
	}
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
