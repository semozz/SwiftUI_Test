//
//  MenuBarOptions.swift
//  SwiftUIUberEatsMenu
//
//  Created by SangWoo on 2022/01/10.
//

import Foundation

enum MenuBarOptions: Int, CaseIterable {
    case japanese
    case american
    case italian
    case promitions
    case fancy
    
    var title: String {
        switch self {
        case .japanese: return "Japanese"
        case .american: return "American"
        case .italian: return "Italian"
        case .promitions: return "Promotions"
        case .fancy: return "Fancy"
        }
    }
    
    var foodItems: [FoodItem] {
        switch self {
        case .american: return americanFood
        case .italian: return italianFood
        case .japanese: return japaneseFood
        case .promitions: return japaneseFood + italianFood
        case .fancy: return italianFood
        }
    }
}
