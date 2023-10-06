//
//  MealDetailViewModel.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import Foundation

class MealDetailViewModel: ObservableObject {
    
    @Published var mealDetailUi = MealDetailUi()
    private var getMealDetailUseCase: GetMealDetailUseCase
    
    init(getMealDetailUseCase: GetMealDetailUseCase) {
        self.getMealDetailUseCase = getMealDetailUseCase
    }
    
    func getMetalDetail(by id: String) {
        mealDetailUi.isLoading = true
        Task {
            do {
                let meals = try await self.getMealDetailUseCase.getDetail(by: id)
                await MainActor.run {
                    handleGetMealDetailSuccess(meals)
                }
            } catch {
                await MainActor.run {
                    handleGetMealDetailError(error)
                }
            }
        }
    }
    
    private func handleGetMealDetailSuccess(_ mealDetail: MealDetail) {
        mealDetailUi.isLoading = false
    }
    
    private func handleGetMealDetailError(_ error: Error) { // TODO: show message for error ui
        mealDetailUi.isLoading = false
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
