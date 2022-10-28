//
//  CenterModifier.swift
//  Africa
//
//  Created by Kyle Ferrigan on 10/28/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
	func body(content: Content) -> some View {
		HStack {
			Spacer()
			content
			Spacer()
		}
	}
}
