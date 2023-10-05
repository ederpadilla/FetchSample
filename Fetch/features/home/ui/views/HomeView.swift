//
//  ContentView.swift
//  Fetch
//
//  Created by Eder  Padilla on 04/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }.padding()
        }
        .onAppear {
            test()
        }
        
    }
    
    func test() {
        
    }
}

#Preview {
    HomeView()
}
