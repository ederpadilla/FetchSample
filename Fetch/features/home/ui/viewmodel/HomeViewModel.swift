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
                handleGetMealsSuccess(try await getMealsUseCase.getDessertMeals())
            } catch {
                handleGetMealsError(error)
            }
        }
    }
    
    private func handleGetMealsSuccess(_ meals: [MealItem]) {
        homeUi.meals = meals.asMealsUi()
        homeUi.showEmptyMealsMessage = homeUi.meals.isNotEmpty()
        homeUi.isLoading = false
        print("Mensaje: \(homeUi.meals)")
    }
    
    private func handleGetMealsError(_ error: Error) { // TODO: handle error ui
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

