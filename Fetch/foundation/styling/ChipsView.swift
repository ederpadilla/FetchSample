//
//  ChipsView.swift
//  Fetch
//
//  Created by Eder  Padilla on 09/10/23.
//

import SwiftUI

struct ChipsView: View {
    
    var labels: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(labels, id: \.self) { label in
                    ChipView(label: label)
                }
            }
            .padding()
        }
    }
}


struct ChipView: View {
    var label: String
    
    var body: some View {
        Text(label)
            .padding(EdgeInsets(top: .point4, leading: .point16, bottom: .point2, trailing: .point16))
            .background(Color.salmon)
            .foregroundColor(.white)
            .cornerRadius(.point16)
    }
}
