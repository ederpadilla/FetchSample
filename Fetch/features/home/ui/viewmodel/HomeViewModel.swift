//
//  HomeViewModel.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var homeUi = HomeUi()
    private var getMealsUseCase: GetMealsUseCase
    
    init(getMealsUseCase: GetMealsUseCase) {
        self.getMealsUseCase = getMealsUseCase
    }
}

