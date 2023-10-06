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
