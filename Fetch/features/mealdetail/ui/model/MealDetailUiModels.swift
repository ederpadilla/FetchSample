//
//  MealDetailUiModels.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import Foundation

struct MealDetailUi {
    var isLoading: Bool = true
    var mealDetailItemUi: MealDetailItemUi = MealDetailItemUi()
    var showEmptyMealsMessage: Bool = false
}

struct MealDetailItemUi {
    var name: String = .empty //
    var drinkAlternat: String = .empty
    var category: String = .empty //
    var area: String = .empty //
    var instructions: String = .empty
    var image: String = .empty //
    var tags: String = .empty
    var youtubeUrl: String = .empty
    var ingredients: [String] = []
    var measures: [String] = []
    var source: String = .empty
}
