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
                
                MealImageDetailView(mealDetailItemUi: viewModel.mealDetailUi.mealDetailItemUi)
                    .padding(.horizontal)
                
                VStack(alignment: .center) {
                 
                    ScrollView(.vertical, showsIndicators: false) {
                        Text(viewModel.mealDetailUi.mealDetailItemUi.instructions)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(Color(UIColor.systemGray))
                            .multilineTextAlignment(.leading)
                    }
                    
                    Spacer()
                }
                .padding()
                .background(Color(UIColor.systemBackground))
                
            }
            .padding()
            
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
