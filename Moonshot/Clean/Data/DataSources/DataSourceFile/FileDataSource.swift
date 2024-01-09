//
//  FileDataSource.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 5/1/24.
//

import Foundation

class FileDataSource {
    private let decoder: FileDecoder
    
    init(decoder: FileDecoder = .init()) {
        self.decoder = decoder
    }
    
    func getAstronautsContent() throws -> [String: AstronautDTO] {
        guard let fileData = getJsonData(from: "astronauts") else {
            fatalError("Cannot load astronauts.json content")
        }
        
        guard let astronautsDTO: [String: AstronautDTO] = try? decoder.decode(data: fileData) else {
            fatalError("Cannot parse astronauts data into DTOs")
        }
        
        return astronautsDTO
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
    
    private func getJsonData(from filePath: String) -> Data? {
        guard let fileUrl = Bundle.main.url(forResource: filePath, withExtension: "json") else {
            return nil
        }
        
        return try? Data(contentsOf: fileUrl)
    }
}
