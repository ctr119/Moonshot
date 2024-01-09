//
//  FileDataSource.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 9/1/24.
//

import Foundation

protocol FileDataSource {
    func getJsonData(from filePath: String) -> Data?
}

extension FileDataSource {
    func getJsonData(from filePath: String) -> Data? {
        guard let fileUrl = Bundle.main.url(forResource: filePath, withExtension: "json") else {
            return nil
        }
        
        return try? Data(contentsOf: fileUrl)
    }
}
