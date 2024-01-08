//
//  FileDecoder.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 8/1/24.
//

import Foundation

struct FileDecoder {
    func decode<T: Codable>(data: Data) throws -> T {
        try JSONDecoder().decode(T.self, from: data)
    }
}
