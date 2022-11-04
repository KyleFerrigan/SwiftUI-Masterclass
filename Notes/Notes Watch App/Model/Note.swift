//
//  Note.swift
//  Notes Watch App
//
//  Created by Kyle Ferrigan on 11/4/22.
//

import Foundation

struct Note: Identifiable, Codable {
	let id: UUID
	let text: String
}
