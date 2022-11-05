//
//  ContentView.swift
//  Avacados
//
//  Created by Kyle Ferrigan on 11/4/22.
//

import SwiftUI

struct ContentView: View {
	
	var headers: [Header] = headersData
	var facts: [Fact] = factData
	var recipe: [Recipe] = recipesData
	
    var body: some View {
		ScrollView(.vertical, showsIndicators: false){
			VStack(alignment: .center, spacing: 20){
				// MARK: - Header
				ScrollView(.horizontal, showsIndicators: false){
					HStack(alignment: .top, spacing: 0){
						ForEach(headers) { item in
							HeaderView(header: item)
						}
					}
				}
				// MARK: - DishesView
				Text("Avocado Dishes")
					.fontWeight(.bold)
					.modifier(TitleModifier())
				DishesView()
					.frame(maxWidth: 640)
				
				
				// MARK: - Avocado Facts
				Text("Avocado Facts")
					.fontWeight(.bold)
					.modifier(TitleModifier())
				
				ScrollView(.horizontal, showsIndicators: false){
					HStack(alignment: .top, spacing: 60){
						ForEach(facts) { fact in
							FactsView(fact: fact)
						}
					}
					.padding(.vertical)
					.padding(.leading, 60)
					.padding(.trailing, 20)
				}
				// MARK: - Recipe card
				Text("Avocado Recipes")
					.fontWeight(.bold)
					.modifier(TitleModifier())
				VStack(alignment: .center, spacing: 20) {
					ForEach(recipe) { item in
						RecipeCardView(recipe: item)
					}
				}
				.frame(maxWidth: 640)
				.padding(.horizontal)
				
				// MARK: - Footer
				Text("All about avocados")
					.modifier(TitleModifier())
					.fontWeight(.bold)
				Text("Everything you wnted to know about avocados but were to afraid to ask")
					.font(.system(.body, design: .serif))
					.multilineTextAlignment(.center)
					.foregroundColor(Color.gray)
			}
			
			.padding(.bottom, 85)
		}
		.edgesIgnoringSafeArea(.all)
		.padding(0)
    }
}

struct TitleModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(.title, design: .serif))
			.foregroundColor(Color("ColorGreenAdaptive"))
			.padding(8)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factData, recipe: recipesData)
    }
}
