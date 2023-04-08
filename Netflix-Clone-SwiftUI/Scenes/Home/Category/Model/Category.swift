//
//  Category.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import Foundation

enum Category: CaseIterable {
    
    case trending
    case originals
    case topRated
    case action
    case comedy
    case horror
    case romance
    case documentary
}

extension Category: Identifiable {
    var id: Int {
        switch self {
        case .trending:
            return 0
        case .originals:
            return 1
        case .topRated:
            return 2
        case .action:
            return 3
        case .comedy:
            return 4
        case .horror:
            return 5
        case .romance:
            return 8
        case .documentary:
            return 7
        }
    }
}

extension Category {
    
    // -1 if not a genre
    var genreId: Int {
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
        case .trending, .originals, .topRated:
            return -1
        }
    }
    
    var file: String {
        switch self {
        case .trending:
            return "Trending"
        case .originals:
            return "Originals"
        case .topRated:
            return "TopRated"
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
    
    var title: String {
        switch self {
        case .trending:
            return "Trending"
        case .originals:
            return "Netflix Originals"
        case .topRated:
            return "TopRated"
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
