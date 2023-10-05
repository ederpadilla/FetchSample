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
    
    func asMealsUi() -> [MealUi] {
        compactMap {
            guard $0.id.isNotEmpty() else { return nil }
            return $0.asMealUi()
        }
    }
}

extension MealItem {
    
    func asMealUi() -> MealUi {
        MealUi(id: id,
               name: name,
               image: imageThumbnail,
               shouldDisplayImage: imageThumbnail.isNotEmpty())
    }
}
