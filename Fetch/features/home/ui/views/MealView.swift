//
//  MealView.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import SwiftUI

struct MealView: View {
    
    @Binding var mealItemUi: MealItemUi
    
    var body: some View {
        VStack {
            if mealItemUi.canBeDisplayed() {
                
                ZStack {
                    Text(mealItemUi.name)
                        .frame(maxWidth: .infinity,
                               minHeight: .point100)
                        .lineLimit(.two)
                        .multilineTextAlignment(.center)
                        .bold()
                        .foregroundColor(.white)
                        .background(.salmon)
                        .cornerRadius(.point8)
                        .offset(y: .point120)
                    
                    CircularImageView(imageUrl: mealItemUi.image)
                        .frame(maxWidth: .infinity,
                               minHeight: .point35)
                }
            }
        }
    }
}

#Preview {
    @State var mealView = MealItemUi(id: "123",
                                     name: "Bakewell tart",
                                     image: "https://www.themealdb.com/images/media/meals/wyrqqq1468233628.jpg")
    
    return MealView(mealItemUi: $mealView)
}
