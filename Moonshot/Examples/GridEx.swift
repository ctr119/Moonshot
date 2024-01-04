//
//  GridEx.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 5/1/24.
//

import SwiftUI

struct GridEx: View {
    let layout = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80))
    ]
    
    /// In order to work across a variety of screen sizes,
    /// we can use `adaptive sizes`:
    let adaptativeLayout = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: adaptativeLayout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    GridEx()
}
