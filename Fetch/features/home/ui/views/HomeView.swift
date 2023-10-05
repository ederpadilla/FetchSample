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
        getMealsUseCase.getDessertMeals { result in
            switch result {
            case .success(let data):
                print("Mensaje: \(data)")
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}

#Preview {
    HomeView()
}
