//
//  ContentView.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        ZStack {
            
            NavigationView {
                
                MealsCollectionView(mealsItemUi: $viewModel.homeUi.mealsItemsUi)
                
            }
            
            if viewModel.homeUi.isLoading {
                ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(UIColor.systemBackground))
            }
        }
        .task {
            viewModel.getMealsFromDesert()
        }
    }
}

#Preview {
    HomeInjector.provideHomeView()
}
