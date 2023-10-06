//
//  MealsCollectionView.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import SwiftUI

struct MealsCollectionView: View {
    
    @Binding var mealsUi: MealsUi
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(),
                                         spacing: .point16),
                                GridItem(.flexible(),
                                         spacing: .point16)],
                      spacing: .point46) {
                
                ForEach(mealsUi.mealsItemsUi) { mealItemUi in
                    
                    NavigationLink(destination: MealDetailView()) {
                        MealView(mealItemUi: mealItemUi)
                            .padding(.bottom, .point80)
                    }
                    
                }
            }
                      .padding(.point16)
        }
        .navigationTitle(String(localized: "Meals Title"))
    }
}
