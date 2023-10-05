//
//  MealsRemoteDataSource.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

protocol MealsRemote {
    func fetchMeals(completion: @escaping (Result<[MealItem], Error>) -> Void)
}

class MealsRemoteDataSource: MealsRemote {
    
    private let fetchMealsEndpoint = "filter.php?c=Dessert"
    
    func fetchMeals(completion: @escaping (Result<[MealItem], Error>) -> Void) {
        URLSession.shared.fetch(endopoint: fetchMealsEndpoint) { (result: Result<MealsRemoteResponse, Error>) in
            switch result {
            case .success(let mealsResponse):
                completion(.success(mealsResponse.asMealItems()))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
