//
//  MissionDTO.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 8/1/24.
//

import Foundation

struct MissionDTO: Codable {
    struct CrewRoleDTO: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRoleDTO]
    let description: String
}

