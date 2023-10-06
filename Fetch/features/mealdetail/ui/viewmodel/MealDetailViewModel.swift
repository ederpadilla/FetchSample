//
//  MealDetailViewModel.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import Foundation

class MealDetailViewModel: ObservableObject {
    
    private var getMealDetailUseCase: GetMealDetailUseCase
    
    init(getMealDetailUseCase: GetMealDetailUseCase) {
        self.getMealDetailUseCase = getMealDetailUseCase
    }
}
