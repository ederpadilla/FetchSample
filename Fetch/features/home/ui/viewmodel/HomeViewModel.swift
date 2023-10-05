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
    
    func getMealsFromDesert() {
        homeUi.isLoading = true
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
        homeUi.mealsItemsUi = meals.asMealsItemsUi()
        homeUi.showEmptyMealsMessage = homeUi.mealsItemsUi.isNotEmpty()
        homeUi.isLoading = false
        print("Mensaje: \(homeUi.mealsItemsUi)")
    }
    
    private func handleGetMealsError(_ error: Error) { // TODO: show message for error ui
        print("Error: \(error)")
        homeUi.isLoading = false
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

