//
//  Genre.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import Foundation

enum Genre {
    case action
    case comedy
    case horror
    case romance
    case documentary
}

extension Genre {
    
    var id: Int {
        switch self {
        case .action:
            return 28
        case .comedy:
            return 35
        case .horror:
            return 27
        case .romance:
            return 10749
        case .documentary:
            return 99
        }
    }
    
    var file: String {
        switch self {
        case .action:
            return "Action"
        case .comedy:
            return "Comedy"
        case .horror:
            return "Horror"
        case .romance:
            return "Romance"
        case .documentary:
            return "Documentary"
        }
    }
}
