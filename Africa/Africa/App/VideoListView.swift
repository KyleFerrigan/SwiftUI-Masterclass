//
//  VideoListView.swift
//  Africa
//
//  Created by Kyle Ferrigan on 10/26/22.
//

import SwiftUI

struct VideoListView: View {
	//MARK: Properties
	@State var videos: [Video] = Bundle.main.decode("videos.json")
	
	let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
	
	//MARK: Body
    var body: some View {
		NavigationView {
			List {
				ForEach(videos) { item in
					NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
						VideoListItemView(video: item)
					}
						//.padding(.vertical, 8)
				}//End Loop
			}//End List
			.listStyle(InsetGroupedListStyle())
			.navigationBarTitle("Videos", displayMode: .inline)
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing){
					Button(action: {
						videos.shuffle()
						hapticImpact.impactOccurred()
					}) {
						Image(systemName: "shuffle")
					}
				}
			}//End Toolbar
		}
	}
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
