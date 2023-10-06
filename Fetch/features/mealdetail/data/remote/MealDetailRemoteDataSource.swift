//
//  MealDetailRemoteDataSource.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import Foundation

protocol MealDetailRemote {
    func fetchDeatil(by id: String) async throws -> MealDetail
}

class MealDetailRemoteDataSource: MealDetailRemote {
    
    private let detailEndpoint = "lookup.php?i="
    
    func fetchDeatil(by id: String) async throws -> MealDetail {
        let mealDetailRemoteResponse: MealDetailRemoteResponse = try await URLSession.shared.fetch(endopoint: "\(detailEndpoint)\(id)")
        return mealDetailRemoteResponse.asMealDetail()
    }
}
