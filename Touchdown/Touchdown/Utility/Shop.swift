//
//  Shop.swift
//  Touchdown
//
//  Created by Kyle Ferrigan on 11/1/22.
//

import Foundation

class Shop: ObservableObject {
	@Published var showingProduct: Bool = false
	@Published var selectedProduct: Product? = nil
}
