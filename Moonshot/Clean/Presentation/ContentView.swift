//
//  ContentView.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 27/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = ContentViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "moon.stars")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("^[\(viewModel.astronauts.count) astronaut](inflect: true)")
        }
        .padding()
        .onAppear {
            viewModel.onAppear()
        }
    }
}

#Preview {
    ContentView()
}
