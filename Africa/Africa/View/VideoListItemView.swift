//
//  VideoListItem.swift
//  Africa
//
//  Created by Kyle Ferrigan on 10/27/22.
//

import SwiftUI

struct VideoListItemView: View {
	let video: Video
	
    var body: some View {
		HStack (spacing: 10){
			ZStack {
				Image(video.thumbnail)
					.resizable()
					.scaledToFit()
					.frame(height: 80)
					.cornerRadius(8)
				
					Image(systemName: "play.circle")
					.resizable()
					.scaledToFit()
					.frame(height: 32)
					.shadow(radius: 4)
			}//End ZStack
			VStack(alignment: .leading, spacing: 10){
				Text(video.name)
					.font(.title2)
					.fontWeight(.heavy)
					.foregroundColor(.accentColor)
				
				Text(video.headline)
					.font(.footnote)
					.multilineTextAlignment(.leading)
					.lineLimit(2)
			}
		}//End HStack
    }
}

struct VideoListItem_Previews: PreviewProvider {
	static let videos: [Video] = Bundle.main.decode("videos.json")
	
    static var previews: some View {
        VideoListItemView(video: videos[0])
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
