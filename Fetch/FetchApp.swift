//
//  FetchApp.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import SwiftUI

@main
struct FetchApp: App {
    var body: some Scene {
        WindowGroup {
            MealsInjector.provideMealsView()
        }
    }
}
