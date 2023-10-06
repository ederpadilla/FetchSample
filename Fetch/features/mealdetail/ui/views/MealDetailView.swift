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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                viewModel.getMetalDetail(by: id)
            }
        
        if viewModel.mealDetailUi.isLoading {
            ProgressView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(UIColor.systemBackground))
        }
    }
}
