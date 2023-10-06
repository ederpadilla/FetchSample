//
//  GetMealUseCase.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import Foundation

import Foundation

class GetMealDetailUseCase {
    
    private let mealDetailRepository: MealDetailRepository
    
    init(mealDetailRepository: MealDetailRepository) {
        self.mealDetailRepository = mealDetailRepository
    }
    
    func getDetail(by id: String) async throws -> MealDetail {
        try await mealDetailRepository.getDeatil(by: id)
    }
}
