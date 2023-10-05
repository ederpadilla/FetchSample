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
        Text("Item \(item)")
            .frame(maxWidth: .infinity, minHeight: .point100)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(.point8)
    }
}

#Preview {
    MealView(item: .empty)
}
