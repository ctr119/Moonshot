//
//  AstronautsRepository.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 5/1/24.
//

import Foundation

class AstronautsRepository {
    private let dataSource: FileDataSource
    private let missionConverter: MissionConverter
    
    init(
        dataSource: FileDataSource = .init(),
        missionConverter: MissionConverter = .init()
    ) {
        self.dataSource = dataSource
        self.missionConverter = missionConverter
    }
    
    func getAstronauts() -> [String: Astronaut] {
        do {
            let astronautsDTO = try dataSource.getAstronautsContent()
            
            return astronautsDTO.reduce(into: [:]) { partialResult, dictElement in
                let astronautDTO = dictElement.value
                partialResult[dictElement.key] = astronautDTO.toDomain
            }
        } catch {
            fatalError()
        }
    }
    
    func getMissions() -> [Mission] {
        guard let missionsDTO = try? dataSource.getMissions() else {
            return []
        }
        let astronauts = getAstronauts()
        
        return missionsDTO.map {
            missionConverter.convert(missionDto: $0, astronauts: astronauts)
        }
    }
}
