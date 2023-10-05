//
//  HomeInjector.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

enum HomeInjector {
    
    private static func provideMealsRemoteDataSource() -> MealsRemoteDataSource {
        MealsRemoteDataSource()
    }
    
    private static func provideMealsRepository() -> MealsRepository {
        MealsRepository(mealsRemote: provideMealsRemoteDataSource())
    }
    
    static func provideGetMealsUseCase() -> GetMealsUseCase {
        GetMealsUseCase(mealsRepository: provideMealsRepository())
    }
}