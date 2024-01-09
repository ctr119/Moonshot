//
//  DataError.swift
//  Moonshot
//
//  Created by Víctor Barrios Sánchez on 9/1/24.
//

import Foundation

enum DataError: Error {
    case cannotLoadContent(file: String)
}
