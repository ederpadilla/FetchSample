//
//  MealDetailView.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import SwiftUI

struct MealDetailView: View {
    
    @StateObject var viewModel: MealDetailViewModel
    let id: String
    
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading , spacing: .point5) {
                
                HeaderDetailView(mealDetailItemUi: viewModel.mealDetailUi.mealDetailItemUi)
                    .padding(.horizontal)
                
                MealImageDetailView(mealDetailItemUi: viewModel.mealDetailUi.mealDetailItemUi)
                    .padding(.horizontal)
                    .zIndex(.point1)
                
                IntructionsView(mealDetailItemUi: viewModel.mealDetailUi.mealDetailItemUi)
                
            }.zIndex(.point0)
            
            .onAppear {
                viewModel.getMetalDetail(by: id)
            }
            
            if viewModel.mealDetailUi.isLoading {
                ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(UIColor.systemBackground))
            }
        }.background(Color.accentColor)
    }
}
