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
    var missions: [Mission] = []
    
    private let getAstronautsUseCase: GetAstronautsUseCase
    private let getMissionsUseCase: GetMissionsUseCase
    
    init(
        getAstronautsUseCase: GetAstronautsUseCase = .init(),
        getMissionsUseCase: GetMissionsUseCase = .init()
    ) {
        self.getAstronautsUseCase = getAstronautsUseCase
        self.getMissionsUseCase = getMissionsUseCase
    }
    
    func onAppear() {
        astronauts = getAstronautsUseCase().map { $0.value }
        missions = getMissionsUseCase()
    }
}
