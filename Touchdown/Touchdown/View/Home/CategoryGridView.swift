//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Kyle Ferrigan on 10/30/22.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false, content: {
			LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
				Section(
					header: SectionView(rotateClockwise: false),
					footer: SectionView(rotateClockwise: true)
				){
					ForEach(categories){ category in
						CategoryItemView(category: category)
					}
				}
			})// END OF Grid
			.frame(height: 140)
			.padding(.horizontal, 15)
			.padding(.vertical, 10)
		})
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
			.previewLayout(.sizeThatFits)
			.padding()
			.background(colorBackground)
		
    }
}
