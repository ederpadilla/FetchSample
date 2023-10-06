//
//  MealDetailRepository.swift
//  Fetch
//
//  Created by Eder  Padilla on 06/10/23.
//

import Foundation

class MealDetailRepository {
    
    private let mealDetailRemote: MealDetailRemote
    
    init(mealDetailRemote: MealDetailRemote) {
        self.mealDetailRemote = mealDetailRemote
    }
    
    func getDeatil(by id: String) async throws -> MealDetail {
        try await mealDetailRemote.fetchDeatil(by: id)
    }
}
