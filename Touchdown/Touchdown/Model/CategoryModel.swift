//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Kyle Ferrigan on 10/30/22.
//

import Foundation

struct Category:Codable, Identifiable {
	let id: Int
	let name: String
	let image: String
}
