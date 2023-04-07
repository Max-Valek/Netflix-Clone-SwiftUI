//
//  StaticJSONMapper.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import Foundation

// decode static json file for any codable type

struct StaticJSONMapper {
    
    // Pass in any type that conforms to Decodable, decode the json
    // file to that type and return it.
    static func decode<T: Decodable>(file: String, type: T.Type) throws -> T {
        
        // get the path to the json file and store its contents in a variable
        guard !file.isEmpty,
            let path = Bundle.main.path(forResource: file, ofType: "json"),
            let data = FileManager.default.contents(atPath: path) else {
            // throw our custom error if we can't load the file
            throw MappingError.failedToGetContents
        }
        
        // decode the json
        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let result = try decoder.decode(T.self, from: data)
        return result
    }
}

extension StaticJSONMapper {
    
    // error to throw if file can't be loaded
    enum MappingError: Error {
        case failedToGetContents
    }
}
