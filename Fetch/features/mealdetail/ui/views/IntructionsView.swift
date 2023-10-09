//
//  IntructionsView.swift
//  Fetch
//
//  Created by Eder  Padilla on 09/10/23.
//

import SwiftUI

struct IntructionsView: View {
    
    let mealDetailItemUi: MealDetailItemUi
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            ChipsView(labels: mealDetailItemUi.createIngredientsAndMeasures())
            
            ScrollView(.vertical, showsIndicators: false) {
                Text(mealDetailItemUi.instructions)
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(Color(UIColor.systemGray))
                    .multilineTextAlignment(.leading)
            }
            .padding(.horizontal)
            .padding(.bottom, .point75)
            
            Spacer()
        }
        
        .background(
            Color.white
                .clipShape(RoundTopsShape())
                .padding(.top, -.point100)
        )
        .ignoresSafeArea()
    }
}
