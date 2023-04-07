//
//  HomeModels.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import Foundation

struct ItemsList: Codable {
    let page: Int
    let results: [Item]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct Item: Codable, Identifiable {
    // ALL HAVE
    
    // identifier
    let id: Int
    // summary
    let overview: String
    // path to backdrop image (optional for category)
    let backdropPath: String?
    // path to poster image
    let posterPath: String
    // array of genres for the item
    let genreIDS: [Int]
    // how popular it is??
    let popularity: Double
    // idk
    let voteAverage: Double
    // idk
    let voteCount: Int
    
    // ALL EXCEPT ORIGINALS HAVE
    // is it an adult show?
    let adult: Bool?
    // sometimes title, sometimes name
    let title: String?
    // title in native language (this or name)
    let originalTitle: String?
    // either releaseDate or firstAirDate
    let releaseDate: String?
    // no idea, theyre all false
    let video: Bool?
    
    // ONLY TRENDING AND ORIGINALS HAVE
    
    // movie or tv
    let mediaType: MediaType?
    // sometimes title, sometimes name
    let name: String?
    // name in native language (this or title)
    let originalName: String?
    // this or release date
    let firstAirDate: String?
    // where the movie was made prob
    let originCountry: [String]?
    
    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case id, title
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case genreIDS = "genre_ids"
        case popularity
        case releaseDate = "release_date"
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case name
        case originalName = "original_name"
        case firstAirDate = "first_air_date"
        case originCountry = "origin_country"
    }
}

// MARK: - MediaType

enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

// MARK: - Language

enum Language: String, Codable {
    case en = "en"
    case es = "es"
    case ja = "ja"
    case ko = "ko"
}
