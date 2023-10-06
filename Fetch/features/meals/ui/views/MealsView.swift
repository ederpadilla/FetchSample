//
//  ContentView.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import SwiftUI

struct MealsView: View {
    
    @StateObject var viewModel: MealsViewModel
    
    var body: some View {
        ZStack {
            
            NavigationView {
                
                MealsCollectionView(mealsUi: $viewModel.mealsUi)
                
            }
            
            if viewModel.mealsUi.isLoading {
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
    MealsInjector.provideMealsView()
}
