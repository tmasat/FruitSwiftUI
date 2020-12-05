//
//  ContentView.swift
//  FruitList
//
//  Created by Cagri Tugberk MASAT on 5.12.2020.
//

import SwiftUI

struct ContentView: View {

    var fruitModelData: [FruitModel] = fruitsData

    var body: some View {
        NavigationView {
            List {
                ForEach(fruitModelData) { data in
                    FruitRowView(fruitModel: data)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruitModelData: fruitsData)
    }
}
