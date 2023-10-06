//
//  MealsRepository.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

class MealsRepository {
    
    private let mealsRemote: MealsRemote
    
    init(mealsRemote: MealsRemote) {
        self.mealsRemote = mealsRemote
    }
    
    func getDessertMeals() async throws -> [MealItem] {
        try await mealsRemote.fetchDessertMeals()
    }
}
