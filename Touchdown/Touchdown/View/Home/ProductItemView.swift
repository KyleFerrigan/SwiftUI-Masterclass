//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Kyle Ferrigan on 10/30/22.
//

import SwiftUI

struct ProductItemView: View {
	// MARK: - Properties
	let product: Product
	
	// MARK: - Body
    var body: some View {
		VStack(alignment: .leading,spacing: 6, content: {
			ZStack {
				Image(product.image)
					.resizable()
					.scaledToFit()
					.padding(10)
				
			}// END OF ZStack
			.background(Color(red: product.red, green: product.green, blue: product.blue))
			.cornerRadius(12)
			
			Text(product.name)
				.font(.title3)
				.fontWeight(.black)
			
			Text(product.formattedPrice)
				.fontWeight(.semibold)
				.foregroundColor(.gray)
		})// END OF VStack
    }// END OF Body
}// END OF View

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
			.previewLayout(.fixed(width: 200, height: 300))
			.padding()
			.background(colorBackground)
    }
}
