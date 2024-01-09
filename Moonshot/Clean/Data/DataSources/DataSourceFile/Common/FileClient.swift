//
//  FileClient.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 9/1/24.
//

import Foundation

struct FileClient {
    func readData<T: Codable>(from filePath: String) throws -> T {
        guard let fileData = getJsonData(from: filePath) else {
            throw DataError.cannotLoadContent(file: filePath)
        }
        
        return try JSONDecoder().decode(T.self, from: fileData)
    }
    
    private func getJsonData(from filePath: String) -> Data? {
        guard let fileUrl = Bundle.main.url(forResource: filePath, withExtension: "json") else {
            return nil
        }
        
        return try? Data(contentsOf: fileUrl)
    }
}
