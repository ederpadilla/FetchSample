//
//  MealsViewModel.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import Foundation

class MealsViewModel: ObservableObject {
    
    @Published var mealsUi = MealsUi()
    private var getMealsUseCase: GetMealsUseCase
    
    init(getMealsUseCase: GetMealsUseCase) {
        self.getMealsUseCase = getMealsUseCase
    }
    
    func getMealsFromDesert() {
        mealsUi.isLoading = true
        Task {
            do {
                let meals = try await self.getMealsUseCase.getDessertMeals()
                await MainActor.run {
                    handleGetMealsSuccess(meals)
                }
            } catch {
                await MainActor.run {
                    handleGetMealsError(error)
                }
            }
        }
    }
    
    private func handleGetMealsSuccess(_ meals: [MealItem]) {
        mealsUi.mealsItemsUi = meals.asMealsItemsUi()
        mealsUi.showEmptyMealsMessage = mealsUi.mealsItemsUi.isNotEmpty()
        mealsUi.isLoading = false
    }
    
    private func handleGetMealsError(_ error: Error) { // TODO: show message for error ui
        mealsUi.isLoading = false
        switch error {
        case NetworkError.noInternetConnection:
            return
        case NetworkError.invalidURL:
            return
        case NetworkError.invalidResponse:
            return
        case NetworkError.invalidStatusCode:
            return
        default:
            return
        }
    }
}

