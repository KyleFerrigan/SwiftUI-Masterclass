//
//  FactModel.swift
//  Avocados
//
//  Created by Kyle Ferrigan on 11/5/22.
//

import SwiftUI

struct Fact: Identifiable {
	var id = UUID()
	var image: String
	var content: String
}
