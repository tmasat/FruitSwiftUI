//
//  OnboardingView.swift
//  FruitList
//
//  Created by Cagri Tugberk MASAT on 5.12.2020.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES

    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)

    }
}

//MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
