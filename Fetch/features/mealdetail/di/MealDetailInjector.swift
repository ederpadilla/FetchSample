//
//  MealDetailInjector.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import Foundation

enum MealDetailInjector {
    
    private static func provideMealDetailRemoteDataSource() -> MealDetailRemoteDataSource {
        MealDetailRemoteDataSource()
    }
    
    private static func provideMealDetailRepository() -> MealDetailRepository {
        MealDetailRepository(mealDetailRemote: provideMealDetailRemoteDataSource())
    }
    
    private static func provideGetMealDetailUseCase() -> GetMealDetailUseCase {
        GetMealDetailUseCase(mealDetailRepository: provideMealDetailRepository())
    }
    
    private static func provideMealDetailViewModel() -> MealDetailViewModel {
        MealDetailViewModel(getMealDetailUseCase: provideGetMealDetailUseCase())
    }
    
    static func provideMealDetailView() -> MealDetailView {
        MealDetailView(viewModel: provideMealDetailViewModel())
    }
}
