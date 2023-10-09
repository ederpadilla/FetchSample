//
//  MealDetailDomainModels.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import Foundation

struct MealDetail {
    var id: String = .empty
    var name: String = .empty
    var drinkAlternat: String = .empty
    var category: String = .empty
    var area: String = .empty
    var instructions: String = .empty
    var thumbnailUrl: String = .empty
    var tags: String = .empty
    var youtubeUrl: String = .empty
    var ingredients: [String] = []
    var measures: [String] = []
    var source: String = .empty
}

extension MealDetail {
    
    func asMealDetailItemUi() -> MealDetailItemUi {
        MealDetailItemUi(name: name,
                         drinkAlternat: drinkAlternat,
                         category: category,
                         area: area,
                         image: thumbnailUrl,
                         tags: tags,
                         youtubeUrl: youtubeUrl,
                         source: source,
                         instructions: instructions,
                         ingredients: createIngredients(),
                         measures: createMeasures())
    }
    
    private func createIngredients() -> [String] {
        ingredients.compactMap {
            guard $0.isNotEmpty() else { return nil }
            return $0
        }
    }
    
    private func createMeasures() -> [String] {
        measures.compactMap {
            guard $0.isNotEmpty() else { return nil }
            return $0
        }
    }
}
