//
//  FruitModel.swift
//  FruitList
//
//  Created by Cagri Tugberk MASAT on 5.12.2020.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct FruitModel: Identifiable {
    
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]

}
