//
//  GetAstronautsUseCase.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 8/1/24.
//

import Foundation

class GetAstronautsUseCase {
    private let astronautsRepository: AstronautsRepository
    
    init(astronautsRepository: AstronautsRepository = .init()) {
        self.astronautsRepository = astronautsRepository
    }
    
    func callAsFunction() -> [String: Astronaut] {
        astronautsRepository.getAstronauts()
    }
}
