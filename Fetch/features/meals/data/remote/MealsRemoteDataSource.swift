//
//  MealsRemoteDataSource.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

protocol MealsRemote {
    func fetchDessertMeals() async throws -> [MealItem]
}

class MealsRemoteDataSource: MealsRemote {
    
    private let fetchMealsEndpoint = "filter.php?c=Dessert"
    
    func fetchDessertMeals() async throws -> [MealItem] {
        let mealsRemoteResponse: MealsRemoteResponse = try await URLSession.shared.fetch(endopoint: fetchMealsEndpoint)
        return mealsRemoteResponse.asMealItems()
    }
}
