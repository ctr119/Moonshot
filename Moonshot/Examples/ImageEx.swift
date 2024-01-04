//
//  ImageEx.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 28/12/23.
//

import SwiftUI

struct ImageEx: View {
    var body: some View {
//        Image(.example)
//            .frame(width: 300, height: 300)
//            .clipped()
        
        Image(.example)
            .resizable()
            .scaledToFit() // .aspectRatio(contentMode: .fit)
//            .frame(width: 300, height: 300)
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    ImageEx()
}
