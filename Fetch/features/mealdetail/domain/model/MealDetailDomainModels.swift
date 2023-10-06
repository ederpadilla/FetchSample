//
//  MealDetailDomainModels.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import Foundation

struct MealDetail {
    let id: String
    let name: String
    let drinkAlternat: String
    let category: String
    let area: String
    let instructions: String
    let thumbnailUrl: String
    let tags: String
    let youtubeUrl: String
    let ingredients: [String]
    let measures: [String]
    let source: String
}
