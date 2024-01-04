//
//  ScrollEx.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 4/1/24.
//

import SwiftUI

struct ScrollEx: View {
    var body: some View {
        ScrollView {
            listWithVStack
        }
    }
    
    private var listWithVStack: some View {
        VStack(spacing: 10) {
            ForEach(0..<100) {
                Text("Item \($0)")
                    .font(.title)
            }
        }
        .frame(maxWidth: .infinity)
    }
    
    private var listWithLazyVStack: some View {
        LazyVStack(spacing: 10) {
            ForEach(0..<100) {
                Text("Item \($0)")
                    .font(.title)
            }
        }
    }
    
    /// Quirk: Although the code to use regular and lazy stacks is the same,
    /// there is one important layout difference:
    ///
    /// **Lazy stacks** always take up as much as room as **is available** in our layouts,
    /// whereas **regular stacks** take up only as much space as **is needed**.
    ///
    /// This is intentional, because it stops lazy stacks having to adjust
    /// their size if a new view is loaded that wants more space.
}

#Preview {
    ScrollEx()
}
