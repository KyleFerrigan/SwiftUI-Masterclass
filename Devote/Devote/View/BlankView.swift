//
//  BlankView.swift
//  Devote
//
//  Created by Kyle Ferrigan on 11/3/22.
//

import SwiftUI

struct BlankView: View {
	var backgroundColor: Color
	var backgroundOpacity: Double
	
	var body: some View {
		VStack{
			Spacer()
		}
		.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
		.background(backgroundColor)
		.opacity(backgroundOpacity)
		.blendMode(.overlay)
		.edgesIgnoringSafeArea(.all)
    }
}

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
		BlankView(backgroundColor: Color.black, backgroundOpacity: 0.3)
			.background(BackgroundImageView())
			.background(backgroundGradient.ignoresSafeArea(.all))
    }
}
