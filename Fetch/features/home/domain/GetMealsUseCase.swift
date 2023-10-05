//
//  GetMealsUseCase.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

class GetMealsUseCase {
    
    private let mealsRepository: MealsRepository
    
    init(mealsRepository: MealsRepository) {
        self.mealsRepository = mealsRepository
    }
    
    func getDessertMeals() async throws -> [MealItem] {
        try await mealsRepository.getDessertMeals()
    }
}
