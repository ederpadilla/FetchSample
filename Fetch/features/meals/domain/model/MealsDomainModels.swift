//
//  MealsModels.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

struct MealItem {
    let id: String
    let name: String
    let imageThumbnail: String
}

extension Array where Element == MealItem {
    
    func asMealsItemsUi() -> [MealItemUi] {
        compactMap {
            guard $0.id.isNotEmpty(),
                  $0.name.isNotEmpty(),
                  $0.imageThumbnail.isNotEmpty() else { return nil }
            return $0.asMealItemUi()
        }.sorted { $0.name < $1.name }
    }
}

extension MealItem {
    
    func asMealItemUi() -> MealItemUi {
        MealItemUi(id: id,
                   name: name,
                   image: imageThumbnail)
    }
}
