//
//  Extensions.swift
//  Slot Machine
//
//  Created by Kyle Ferrigan on 11/6/22.
//

import SwiftUI

extension Text {
	func scoreLabelStyle() -> Text {
		self
			.foregroundColor(Color.white)
			.font(.system(size: 10, weight: .bold, design: .rounded))
	}
}

extension Text {
	func scoreNumberStyle() -> Text {
		self
			.foregroundColor(Color.white)
			.font(.system(.title, design: .rounded))
			.fontWeight(.heavy)
	}
}
