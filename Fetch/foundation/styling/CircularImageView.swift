//
//  CircularImageView.swift
//  Fetch
//
//  Created by Eder  Padilla on 05/10/23.
//

import SwiftUI

struct CircularImageView: View {
    var body: some View {
        Image("your_image_name")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: .point2))
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView()
    }
}
