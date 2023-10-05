//
//  MealsRemoteModels.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

struct MealsRemoteResponse: Decodable {
    var meals: [MealsRemoteItemResponse]? = nil
}

extension MealsRemoteResponse {
    
    func asMealItems() -> [MealItem] {
        meals?.compactMap { $0.asMealItem() }.sorted { $0.name < $1.name } ?? []
    }
}

struct MealsRemoteItemResponse: Decodable {
    var idMeal: String? = nil
    var strMeal: String? = nil
    var strMealThumb: String? = nil
}

extension MealsRemoteItemResponse {
    
    func asMealItem() -> MealItem {
        MealItem(id: idMeal.orDefaultString(),
                 name: strMeal.orDefaultString(),
                 imageThumbnail: strMealThumb.orDefaultString())
    }
}
