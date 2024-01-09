//
//  MissionsRepository.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 9/1/24.
//

import Foundation

class MissionsRepository {
    private let astronautsRepository: AstronautsRepository
    private let dataSource: MissionsDataSource
    private let missionConverter: MissionConverter
    
    init(
        astronautsRepository: AstronautsRepository = .init(),
        dataSource: MissionsDataSource = .init(),
        missionConverter: MissionConverter = .init()
    ) {
        self.astronautsRepository = astronautsRepository
        self.dataSource = dataSource
        self.missionConverter = missionConverter
    }
    
    func getMissions() -> [Mission] {
        do {
            let missionsDTO = try dataSource.getMissions()
            let astronauts = astronautsRepository.getAstronauts()
            return missionsDTO.map {
                missionConverter.convert(missionDto: $0, astronauts: astronauts)
            }
            
        } catch {
            return []
        }
    }
}
