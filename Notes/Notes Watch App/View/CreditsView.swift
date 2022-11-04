//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Kyle Ferrigan on 11/4/22.
//

import SwiftUI

struct CreditsView: View {
	// MARK: - Properties
	@State private var randomNumber: Int = Int.random(in: 1..<4)
	private var randomImage: String{
		return "developer-no\(randomNumber)"
	}
	
	// MARK: - Body
    var body: some View {
		VStack(spacing: 3){
			// Profile Image
			Image("developer-no1") //Alternatively use randomImage in place of "developer-no1"
				.resizable()
				.scaledToFit()
				.layoutPriority(1)
			// Header
			HeaderView(title: "Credits")
			//Content
			Text("Kyle Ferrigan")
				.foregroundColor(.primary)
				.fontWeight(.bold)
			Text("Developer")
				.font(.footnote)
				.foregroundColor(.secondary)
				.fontWeight(.light)
		}
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
