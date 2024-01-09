//
//  MissionsDataSource.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 9/1/24.
//

import Foundation

class MissionsDataSource {
    private let client: FileClient
    
    init(client: FileClient = .init()) {
        self.client = client
    }
    
    func getMissions() throws -> [MissionDTO] {
        try client.readData(from: "missions")
    }
}
