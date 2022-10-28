//
//  CodablebundleExtension.swift
//  Africa
//
//  Created by Kyle Ferrigan on 10/26/22.
//

import Foundation

extension Bundle {
	func decode<T: Codable>(_ file: String) -> T {
		// 1. Locate JSON File
		guard let url = self.url(forResource: file, withExtension: nil) else{
			fatalError("Failed to locate \(file) in bundle")
		}
		
		// 2. Create property for data
		guard let data = try? Data(contentsOf: url) else{
			fatalError("Failed to load \(file) from bundle")
		}
		
		// 3. Create a decoder
		let decoder = JSONDecoder()
		
		// 4. Create a property for the decoded data
		guard let loaded = try? decoder.decode(T.self, from: data) else {
			fatalError("Failed to decode \(file) from bundle")
		}
		
		// 5. return the ready to use data
		return loaded
	}
	
}
