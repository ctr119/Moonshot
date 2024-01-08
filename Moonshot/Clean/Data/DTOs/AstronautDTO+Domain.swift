//
//  AstronautDTO+Domain.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 5/1/24.
//

import Foundation

extension AstronautDTO {
    var toDomain: Astronaut {
        .init(id: self.id,
              name: self.name,
              description: self.description)
    }
}
