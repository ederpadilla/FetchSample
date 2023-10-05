//
//  MealView.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import SwiftUI

struct MealView: View {
    
    let item: String
    
    var body: some View {
        ZStack {
            
            CircularImageView()
                .frame(width: 100, height: 100)
                .offset(y: 100)
            
            Text("Item \(item)")
                .frame(maxWidth: .infinity, minHeight: .point100)
                .foregroundColor(.white)
                
                .background(Color.blue)
                .cornerRadius(.point8)
            
            
        }
    }
}

#Preview {
    MealView(item: .empty)
}
