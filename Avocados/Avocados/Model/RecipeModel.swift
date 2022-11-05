//
//  RecipeModel.swift
//  Avocados
//
//  Created by Kyle Ferrigan on 11/5/22.
//

import SwiftUI

struct Recipe: Identifiable {
	var id = UUID()
	var title: String
	var headline: String
	var image: String
	var rating: Int
	var serves: Int
	var preparation: Int
	var cooking: Int
	var instructions: [String]
	var ingredients: [String]
}
