//
//  ContentView.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .onAppear {
            test()
        }
        .padding()
    }
    
    func test() {
        let getMealsUseCase = HomeInjector.provideGetMealsUseCase()
        Task {
            do {
                handleFetchFoodysSuccess(try await getMealsUseCase.getDessertMeals())
            } catch {
                handleFetchFoodysError(error)
            }
        }
    }
    
    func handleFetchFoodysSuccess(_ meals: [MealItem]) {
        print("Mensaje: \(meals)")
    }
    
    private func handleFetchFoodysError(_ error: Error?) {
        print("Error: \(error)")
    }
}

#Preview {
    HomeView()
}
