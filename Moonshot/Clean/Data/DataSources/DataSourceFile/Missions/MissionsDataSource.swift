//
//  MissionsDataSource.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 9/1/24.
//

import Foundation

class MissionsDataSource: FileDataSource {
    private let decoder: FileDecoder
    
    init(decoder: FileDecoder = .init()) {
        self.decoder = decoder
    }
    
    func getMissions() throws -> [MissionDTO] {
        guard let fileData = getJsonData(from: "missions") else {
            fatalError("Cannot load missions.json content")
        }
        
        guard let missionsDTO: [MissionDTO] = try? decoder.decode(data: fileData) else {
            fatalError("Cannot decode missions")
        }
        
        return missionsDTO
    }
}
