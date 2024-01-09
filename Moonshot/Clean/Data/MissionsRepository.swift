//
//  MissionsRepository.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 9/1/24.
//

import Foundation

class MissionsRepository {
    private let astronautsRepository: AstronautsRepository
    private let dataSource: FileDataSource
    private let missionConverter: MissionConverter
    
    init(
        astronautsRepository: AstronautsRepository,
        dataSource: FileDataSource,
        missionConverter: MissionConverter
    ) {
        self.astronautsRepository = astronautsRepository
        self.dataSource = dataSource
        self.missionConverter = missionConverter
    }
    
    func getMissions() -> [Mission] {
        guard let missionsDTO = try? dataSource.getMissions() else {
            return []
        }
        let astronauts = astronautsRepository.getAstronauts()
        
        return missionsDTO.map {
            missionConverter.convert(missionDto: $0, astronauts: astronauts)
        }
    }
}
