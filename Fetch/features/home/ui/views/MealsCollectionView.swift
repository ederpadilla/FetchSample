//
//  MealsCollectionView.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import SwiftUI

struct MealsCollectionView: View {
    
    let items = Array(1...20)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(),
                                         spacing: .point16),
                                GridItem(.flexible(),
                                         spacing: .point16)],
                      spacing: .point46) {
                ForEach(items, id: \.self) { item in
                    
                    MealView(item: item.description)
                    
                }
            }.padding(.point16)
        }
    }
}

#Preview {
    MealsCollectionView()
}
