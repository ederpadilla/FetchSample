//
//  MealImageDetailView.swift
//  Fetch
//
//  Created by Eder  Padilla on 09/10/23.
//

import SwiftUI

struct MealImageDetailView: View {
    
    let mealDetailItemUi: MealDetailItemUi
    @State var isAnimating = false
    
    var body: some View {
        
        HStack(alignment: .center, spacing: .point6) {
            
            VStack {
                
                Text(mealDetailItemUi.drinkAlternat)
                    .fontWeight(.semibold)
                
                Text(mealDetailItemUi.area)
                    .font(.title3)
                    .fontWeight(.black)
                    .scaleEffect(.point1_35, anchor: .leading)
            }
            .offset(y: isAnimating ? -.point50 : -.point75)
            
            Spacer()
            
            CircularImageView(imageUrl: mealDetailItemUi.image, strokeColor: .accentColor)
                .frame(width: .point200,
                       height: .point200)
                .offset(y: isAnimating ? .point0 : -.point35)
            
        }
        .onAppear {
            withAnimation(.easeOut(duration: .duration0_75)) {
                isAnimating.toggle()
            }
        }
    }
}
