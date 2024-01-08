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
        guard let fileUrl = Bundle.main.url(forResource: "astronauts", withExtension: "json"),
              let fileData = try? Data(contentsOf: fileUrl) else {
            fatalError("Cannot load astronauts.json content")
        }
        
        guard let astronautsDTO: [String: AstronautDTO] = try? decoder.decode(data: fileData) else {
            fatalError("Cannot parse astronauts data into DTOs")
        }
        
        return astronautsDTO
    }
}
