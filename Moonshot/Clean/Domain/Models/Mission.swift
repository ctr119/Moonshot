//
//  Mission.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 8/1/24.
//

import Foundation

struct Mission {
    struct CrewMember {
        enum Role: String {
            case commander = "commander"
            case commandModulePilot = "command module pilot"
            case lunarModulePilot = "lunar module pilot"
            case commandPilot = "command pilot"
            case seniorPilot = "senior pilot"
            case pilot = "pilot"
        }
        
        let astronaut: Astronaut
        let role: Role
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewMember]
    let description: String
}
