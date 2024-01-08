//
//  ContentViewModel.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 8/1/24.
//

import SwiftUI

@Observable
class ContentViewModel {
    var astronauts: [Astronaut] = []
    
    private let getAstronautsUseCase: GetAstronautsUseCase
    
    init(getAstronautsUseCase: GetAstronautsUseCase = .init()) {
        self.getAstronautsUseCase = getAstronautsUseCase
    }
    
    func onAppear() {
        astronauts = getAstronautsUseCase().map { $0.value }
    }
}
