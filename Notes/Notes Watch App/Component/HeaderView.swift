//
//  HeaderView.swift
//  Notes Watch App
//
//  Created by Kyle Ferrigan on 11/4/22.
//

import SwiftUI

struct HeaderView: View {
	var title: String = ""
	
    var body: some View {
		VStack{
			if title != "" {
				Text(title.uppercased())
					.font(.title3)
					.fontWeight(.bold)
					.foregroundColor(.accentColor)
			}
			
			HStack{
				Capsule()
					.frame(height: 1)
				
				Image(systemName: "note.text")
				
				
				Capsule()
					.frame(height: 1)
			}
			.foregroundColor(.accentColor)
		}
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
		HeaderView(title: "credits")
    }
}
