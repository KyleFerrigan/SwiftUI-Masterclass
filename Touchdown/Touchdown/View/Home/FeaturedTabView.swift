//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Kyle Ferrigan on 10/29/22.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
		TabView{
			ForEach(players) { player in
				FeaturedItemView(player: player)
					.padding(.top, 10)
					.padding(.horizontal, 15)
			} // END OF Loop
		}// END OF TabView
		.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
			.previewLayout(.sizeThatFits)
			.background(Color.gray)
    }
}
