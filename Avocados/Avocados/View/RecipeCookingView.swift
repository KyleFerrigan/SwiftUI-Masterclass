//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Kyle Ferrigan on 11/5/22.
//

import SwiftUI

struct RecipeCookingView: View {
	var recipe: Recipe
    var body: some View {
		HStack(alignment: .center, spacing: 12){
			HStack(alignment: .center, spacing: 2){
				Image(systemName: "person.2")
				Text("Serves: \(recipe.serves)")
			}
			HStack(alignment: .center, spacing: 2){
				Image(systemName: "clock")
				Text("Prep: \(recipe.preparation) mins")
			}
			HStack(alignment: .center, spacing: 2){
				Image(systemName: "flame")
				Text("Cooking: \(recipe.cooking) mins")
			}
			
		}
		.font(.footnote)
		.foregroundColor(Color.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
    }
}
