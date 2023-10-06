//
//  MealDetailUiModels.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import Foundation

struct MealDetailUi {
    var isLoading: Bool = true
    var mealsItemsUi: MealDetailItemUi = MealDetailItemUi()
    var showEmptyMealsMessage: Bool = false
}

struct MealDetailItemUi {
    var id: String = .empty
    var name: String = .empty
    var image: String = .empty
}
