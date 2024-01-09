//
//  MissionConverter.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 8/1/24.
//

import Foundation

struct MissionConverter {
    func convert(missionDto: MissionDTO, astronauts: [String: Astronaut]) -> Mission {
        let crew: [Mission.CrewMember] = missionDto.crew.compactMap { crewRoleDTO in
            guard let astronaut = astronauts[crewRoleDTO.name],
                  let role = Mission.CrewMember.Role(rawValue: crewRoleDTO.role.lowercased())
            else { return nil }
            
            return Mission.CrewMember(astronaut: astronaut, role: role)
        }
        
        return Mission(
            id: missionDto.id,
            launchDate: parseLaunchDate(dateString: missionDto.launchDate),
            crew: crew,
            description: missionDto.description
        )
    }
    
    private func parseLaunchDate(dateString: String?) -> Date? {
        guard let dateString else { return nil }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        return formatter.date(from: dateString)
    }
}
