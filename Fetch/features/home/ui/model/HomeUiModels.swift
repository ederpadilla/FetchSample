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
}

struct MealUi: Identifiable {
    let id: Int
    let name: String
    let image: String
}
