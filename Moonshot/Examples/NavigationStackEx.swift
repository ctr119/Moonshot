//
//  NavigationStackEx.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 5/1/24.
//

import SwiftUI

struct NavigationStackEx: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    NavigationStackEx()
}
