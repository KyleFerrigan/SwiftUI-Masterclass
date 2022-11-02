//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Kyle Ferrigan on 11/1/22.
//

import SwiftUI

struct ProductDetailView: View {
	@EnvironmentObject var shop : Shop
	
    var body: some View {
		VStack (alignment: .leading, spacing: 5, content: {
			//NAVBAR
			NavigationBarDetailView()
				.padding(.horizontal)
				.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
			//HEADER
			HeaderDetailView()
				.padding(.horizontal)
			//DETAIL TOP PART
			TopPartDetailView()
				.zIndex(1)
			//DETAIL BOTTOM PART
			VStack(alignment: .center, spacing: 0, content: {
				//RATINGS + SIZES
				RatingsSizesDetailView()
					.padding(.top, -25)
					.padding(.bottom, 10)
				//DESCRIPTION
				ScrollView(.vertical, showsIndicators: false, content: {
					Text(shop.selectedProduct?.description ?? sampleProduct.description)
						.font(.system(.body, design: .rounded))
						.foregroundColor(.gray)
						.multilineTextAlignment(.leading)
				})
				//QUANTITY + FAVOURITE
				QuantityFavoriteDetailView()
					.padding(.vertical, 10)
				//ADD TO CART
				AddToCartDetailView()
					.padding(.bottom, 20)
				Spacer()
			})// END OF Vstack
			.padding(.horizontal)
			.background(
				Color.white
				.clipShape(CustomShape())
				.padding(.top, -105)
			)
		})
		.zIndex(0)
		.ignoresSafeArea(.all, edges: .all)
		.background(
			Color(
				red: shop.selectedProduct?.red ?? sampleProduct.red,
				green: shop.selectedProduct?.green ?? sampleProduct.green,
				blue: shop.selectedProduct?.blue ?? sampleProduct.blue
			).ignoresSafeArea(.all, edges: .all)
		)
		
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
			.environmentObject(Shop())
			.previewLayout(.fixed(width: 375, height: 812))
    }
}
