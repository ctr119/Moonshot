//
//  AstronautsRepository.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 5/1/24.
//

import Foundation

class AstronautsRepository {
    private let dataSource: AstronautsDataSource
    
    init(dataSource: AstronautsDataSource = .init()) {
        self.dataSource = dataSource
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
}
