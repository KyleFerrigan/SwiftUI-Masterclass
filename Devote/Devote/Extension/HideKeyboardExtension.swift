//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Kyle Ferrigan on 11/3/22.
//

import SwiftUI

#if canImport(UIKit)
extension View{
	func hideKeyboard() {
		UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
}
#endif
