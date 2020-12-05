//
//  FruitRowView.swift
//  FruitList
//
//  Created by Cagri Tugberk MASAT on 5.12.2020.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - PROPERTIES

    var fruitModel: FruitModel

    //MARK: - BODY
    var body: some View {
        HStack {
            Image(fruitModel.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruitModel.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 5) {
                Text(fruitModel.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruitModel.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            } //: HSTACK
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruitModel: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
