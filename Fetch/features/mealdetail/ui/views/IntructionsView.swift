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
            
            ScrollView(.vertical, showsIndicators: false) {
                Text(mealDetailItemUi.instructions)
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(Color(UIColor.systemGray))
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .background(Color.white)
    }
}

