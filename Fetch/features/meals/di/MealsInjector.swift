//
//  MealsInjector.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

enum MealsInjector {
    
    private static func provideMealsRemoteDataSource() -> MealsRemoteDataSource {
        MealsRemoteDataSource()
    }
    
    private static func provideMealsRepository() -> MealsRepository {
        MealsRepository(mealsRemote: provideMealsRemoteDataSource())
    }
    
    private static func provideGetMealsUseCase() -> GetMealsUseCase {
        GetMealsUseCase(mealsRepository: provideMealsRepository())
    }
    
    private static func provideMealsViewModel() -> MealsViewModel {
        MealsViewModel(getMealsUseCase: provideGetMealsUseCase())
    }
    
    static func provideMealsView() -> MealsView {
        MealsView(viewModel: provideMealsViewModel())
    }
}
