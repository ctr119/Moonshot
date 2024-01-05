//
//  FileDataSource.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 5/1/24.
//

import Foundation

class FileDataSource {
    func getAstronautsContent() throws -> [String: AstronautDTO] {
        guard let fileUrl = Bundle.main.url(forResource: "astronauts", withExtension: "json"),
              let fileData = try? Data(contentsOf: fileUrl) else {
            fatalError("Cannot load astronauts.json content")
        }
        
        guard let astronautsDTO = try? JSONDecoder().decode([String: AstronautDTO].self, from: fileData) else {
            fatalError("Cannot parse astronauts data into DTOs")
        }
        
        return astronautsDTO
    }
}
