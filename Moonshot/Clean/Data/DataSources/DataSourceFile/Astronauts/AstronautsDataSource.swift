//
//  FileDataSource.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 5/1/24.
//

import Foundation

class AstronautsDataSource {
    private let client: FileClient
    
    init(client: FileClient = .init()) {
        self.client = client
    }
    
    func getAstronautsContent() throws -> [String: AstronautDTO] {        
        try client.readData(from: "astronauts")
    }
}
