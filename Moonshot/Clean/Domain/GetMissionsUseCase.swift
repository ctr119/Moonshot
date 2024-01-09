//
//  GetMissionsUseCase.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 9/1/24.
//

import Foundation

class GetMissionsUseCase {
    private let missionsRepository: MissionsRepository
    
    init(missionsRepository: MissionsRepository = .init()) {
        self.missionsRepository = missionsRepository
    }
    
    func callAsFunction() -> [Mission] {
        missionsRepository.getMissions()
    }
}
