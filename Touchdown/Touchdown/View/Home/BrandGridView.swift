//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Kyle Ferrigan on 10/30/22.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false, content:{
			LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
				ForEach(brands) { brand in
					BrandItemView(brand: brand)
				}
			})
		})
		.frame(height: 200)
		.padding(15)
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
			.previewLayout(.sizeThatFits)
			.background(colorBackground)
    }
}
