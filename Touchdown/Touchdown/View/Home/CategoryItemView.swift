//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Kyle Ferrigan on 10/30/22.
//

import SwiftUI

struct CategoryItemView: View {
	let category: Category
	
    var body: some View {
		Button(action: {}, label: {
			HStack {
				Image(category.image)
					.renderingMode(.template).resizable()
					.scaledToFit()
					.frame(width: 30, height: 30, alignment: .center)
					.foregroundColor(.gray)
				
				Text(category.name.uppercased())
					.fontWeight(.light)
					.foregroundColor(.gray)
				
				Spacer()
			}// END OF HStack
			.padding()
			.background(Color.white.cornerRadius(12))
			.background(
				RoundedRectangle(cornerRadius: 12)
					.stroke(Color.gray, lineWidth: 1)
			)
		})
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
		CategoryItemView(category: categories[0])
			.previewLayout(.sizeThatFits)
			.padding()
			.background(colorBackground)
		
    }
}
