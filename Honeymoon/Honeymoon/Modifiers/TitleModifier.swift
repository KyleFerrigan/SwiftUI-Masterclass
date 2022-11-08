//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Kyle Ferrigan on 11/8/22.
//

import SwiftUI

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
	content
	  .font(.largeTitle)
	  .foregroundColor(Color.pink)
  }
}
