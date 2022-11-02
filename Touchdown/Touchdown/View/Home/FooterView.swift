//
//  FooterView.swift
//  Touchdown
//
//  Created by Kyle Ferrigan on 10/29/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
		VStack {
			Text("We Offer the most cutting edge, comfotable, lightweight and durable footbal helmets in the market at affordable prices.")
				.foregroundColor(.gray)
				.multilineTextAlignment(.center)
				.layoutPriority(2)
			
			Image("logo-lineal")
				.renderingMode(.template)
				.foregroundColor(.gray)
			
			Text("Copyright © Kyle Ferrigan\nAll rights reserved")
				.font(.footnote)
				.fontWeight(.bold)
				.foregroundColor(.gray)
				.multilineTextAlignment(.center)
				.layoutPriority(1)
		}
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
			.previewLayout(.sizeThatFits)
			.background(colorBackground)
    }
}
