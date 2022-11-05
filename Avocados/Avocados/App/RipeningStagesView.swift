//
//  RipeningStagesView.swift
//  Avacados
//
//  Created by Kyle Ferrigan on 11/5/22.
//

import SwiftUI

struct RipeningStagesView: View {
	var ripeningStages: [Ripening] = ripeningData
	
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false){
			VStack{
				Spacer()
				HStack(alignment: .center, spacing: 25){
					ForEach(ripeningStages) { stage in
						RipeningView(ripening: stage)
					}
				}
				.padding(.vertical)
				.padding(.horizontal)
				Spacer()
			}
		}
		.edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
