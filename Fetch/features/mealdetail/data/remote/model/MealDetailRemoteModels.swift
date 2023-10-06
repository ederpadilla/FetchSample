//
//  MealDetailRemoteModels.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import Foundation

struct MealDetailRemoteResponse: Decodable {
    var meals: [MealDetailItemRemoteResponse]? = nil
}

extension MealDetailRemoteResponse {
    
    func asMealDetail() -> MealDetail {
        MealDetail(id: <#T##String#>,
                   name: <#T##String#>,
                   drinkAlternat: <#T##String#>,
                   category: <#T##String#>,
                   area: <#T##String#>,
                   instructions: <#T##String#>,
                   thumbnailUrl: <#T##String#>,
                   tags: <#T##String#>,
                   youtubeUrl: <#T##String#>,
                   ingredients: <#T##[String]#>,
                   measures: <#T##[String]#>,
                   source: <#T##String#>)
    }
}

struct MealDetailItemRemoteResponse: Decodable {
    var idMeal: String? = nil
    var strMeal: String? = nil
    var strDrinkAlternat: String? = nil
    var strCategory: String? = nil
    var strArea: String? = nil
    var strInstructions: String? = nil
    var strMealThumb: String? = nil
    var strTags: String? = nil
    var strYoutube: String? = nil
    var strIngredient1: String? = nil
    var strIngredient2: String? = nil
    var strIngredient3: String? = nil
    var strIngredient4: String? = nil
    var strIngredient5: String? = nil
    var strIngredient6: String? = nil
    var strIngredient7: String? = nil
    var strIngredient8: String? = nil
    var strIngredient9: String? = nil
    var strIngredient10: String? = nil
    var strIngredient11: String? = nil
    var strIngredient12: String? = nil
    var strIngredient13: String? = nil
    var strIngredient14: String? = nil
    var strIngredient15: String? = nil
    var strIngredient16: String? = nil
    var strIngredient17: String? = nil
    var strIngredient18: String? = nil
    var strIngredient19: String? = nil
    var strIngredient20: String? = nil
    var strMeasure1: String? = nil
    var strMeasure2: String? = nil
    var strMeasure3: String? = nil
    var strMeasure4: String? = nil
    var strMeasure5: String? = nil
    var strMeasure6: String? = nil
    var strMeasure7: String? = nil
    var strMeasure8: String? = nil
    var strMeasure9: String? = nil
    var strMeasure10: String? = nil
    var strMeasure11: String? = nil
    var strMeasure12: String? = nil
    var strMeasure13: String? = nil
    var strMeasure14: String? = nil
    var strMeasure15: String? = nil
    var strMeasure16: String? = nil
    var strMeasure17: String? = nil
    var strMeasure18: String? = nil
    var strMeasure19: String? = nil
    var strMeasure20: String? = nil
    var strSource: String? = nil
    var strImageSource: String? = nil
    var strCreativeCommonsConfirmed: String? = nil
    var dateModified: String? = nil
}
