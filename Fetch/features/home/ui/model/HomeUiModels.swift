//
//  HomeUiModels.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

struct HomeUi {
    var isLoading: Bool = false
    var meals: [MealUi] = []
    var isShowingDetail: Bool = false
    var showEmptyMealsMessage: Bool = false
}

struct MealUi: Identifiable {
    let id: String
    let name: String
    let image: String
    let shouldDisplayImage: Bool
}
