//
//  OnboardingView.swift
//  Fructus
//
//  Created by Kyle Ferrigan on 10/13/22.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: Body
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }//: END LOOP
        }//: END Tabview
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
//MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
