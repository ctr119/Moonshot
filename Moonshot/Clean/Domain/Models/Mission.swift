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
            case commander = "Commander"
            case commandModulePilot = "Command Module Pilot"
            case lunarModulePilot = "Lunar Module Pilot"
            case commandPilot = "Command Pilot"
            case seniorPilot = "Senior Pilot"
            case pilot = "Pilot"
        }
        
        let astronaut: Astronaut
        let role: Role
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewMember]
    let description: String
}
