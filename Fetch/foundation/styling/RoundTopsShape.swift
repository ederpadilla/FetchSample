//
//  RoundShape.swift
//  Fetch
//
//  Created by Eder  Padilla on 09/10/23.
//

import SwiftUI

struct RoundTopsShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: [.topLeft, .topRight],
                                cornerRadii: CGSize(width: .point35, height: .point35))
        return Path(path.cgPath)
    }
}
