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
        meals?.first?.asMealDetail() ?? MealDetail()
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
}

extension MealDetailItemRemoteResponse {
    
    func asMealDetail() -> MealDetail {
        MealDetail(id: idMeal.orDefaultString(),
                   name: strMeal.orDefaultString(),
                   drinkAlternat: strDrinkAlternat.orDefaultString(),
                   category: strCategory.orDefaultString(),
                   area: strArea.orDefaultString(),
                   instructions: strInstructions.orDefaultString(),
                   thumbnailUrl: strMealThumb.orDefaultString(),
                   tags: strTags.orDefaultString(),
                   youtubeUrl: strYoutube.orDefaultString(),
                   ingredients: createIngredients(),
                   measures: createMeasures(),
                   source: strSource.orDefaultString())
    }
    
    private func createIngredients() -> [String] {
        [strIngredient1.orDefaultString(),
         strIngredient2.orDefaultString(),
         strIngredient3.orDefaultString(),
         strIngredient4.orDefaultString(),
         strIngredient5.orDefaultString(),
         strIngredient6.orDefaultString(),
         strIngredient7.orDefaultString(),
         strIngredient8.orDefaultString(),
         strIngredient9.orDefaultString(),
         strIngredient10.orDefaultString(),
         strIngredient11.orDefaultString(),
         strIngredient12.orDefaultString(),
         strIngredient13.orDefaultString(),
         strIngredient14.orDefaultString(),
         strIngredient15.orDefaultString(),
         strIngredient16.orDefaultString(),
         strIngredient17.orDefaultString(),
         strIngredient18.orDefaultString(),
         strIngredient19.orDefaultString(),
         strIngredient20.orDefaultString()]
    }
    
    private func createMeasures() -> [String] {
        [strMeasure1.orDefaultString(),
         strMeasure2.orDefaultString(),
         strMeasure3.orDefaultString(),
         strMeasure4.orDefaultString(),
         strMeasure5.orDefaultString(),
         strMeasure6.orDefaultString(),
         strMeasure7.orDefaultString(),
         strMeasure8.orDefaultString(),
         strMeasure9.orDefaultString(),
         strMeasure10.orDefaultString(),
         strMeasure11.orDefaultString(),
         strMeasure12.orDefaultString(),
         strMeasure13.orDefaultString(),
         strMeasure14.orDefaultString(),
         strMeasure15.orDefaultString(),
         strMeasure16.orDefaultString(),
         strMeasure17.orDefaultString(),
         strMeasure18.orDefaultString(),
         strMeasure19.orDefaultString(),
         strMeasure20.orDefaultString()]
    }
}
