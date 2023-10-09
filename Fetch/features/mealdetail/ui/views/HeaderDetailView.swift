//
//  HeaderDetailView.swift
//  Fetch
//
//  Created by Eder  Padilla on 09/10/23.
//

import SwiftUI

struct HeaderDetailView: View {
    
    let mealDetailItemUi: MealDetailItemUi
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: .point6) {
            
            Text(mealDetailItemUi.category)
            
            Text(mealDetailItemUi.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
    }
}
