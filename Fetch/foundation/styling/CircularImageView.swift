//
//  CircularImageView.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct CircularImageView: View {
    
    let imageUrl: String
    var strokeColor: Color = .gray
    
    var body: some View {
        
        AnimatedImage(url: URL(string: imageUrl))
            .transition(SDWebImageTransition.fade)
            .resizable()
            .placeholder { ProgressView() }
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .clipShape(Circle())
            .overlay(Circle().stroke(strokeColor, lineWidth: .point4))
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(imageUrl: .empty)
    }
}
