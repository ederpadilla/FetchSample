//
//  HomeUiModels.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

struct HomeUi {
    var isLoading: Bool = true
    var mealsItemsUi: [MealItemUi] = []
    var isShowingDetail: Bool = false
    var showEmptyMealsMessage: Bool = false
}

struct MealItemUi: Identifiable {
    let id: String
    let name: String
    let image: String
}
