//
//  HomeModels.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

//import Foundation


/*
 
 These were condensed into the ItemsList and Item data model.
 New data model is stored in HomeModels.swift
 
 */

//// MARK: - Trending
//
//struct Trending: Codable {
//    // for pagination
//    let page: Int
//    // array of shows/movies
//    let results: [TrendingItem]
//    let totalPages, totalResults: Int
//
//    enum CodingKeys: String, CodingKey {
//        case page, results
//        case totalPages = "total_pages"
//        case totalResults = "total_results"
//    }
//}
//
//// MARK: - TrendingItem: type for Trending results array
//
//struct TrendingItem: Codable, Identifiable {
//    // is it an adult show?
//    let adult: Bool
//    // path to backdrop image
//    let backdropPath: String
//    // identifier
//    let id: Int
//    // sometimes title, sometimes name
//    let title: String?
//    // lang
//    let originalLanguage: Language
//    // title in native language (this or name)
//    let originalTitle: String?
//    // summary
//    let overview: String
//    // path to poster image
//    let posterPath: String
//    // movie or tv
//    let mediaType: MediaType
//    // array of genres for the item
//    let genreIDS: [Int]
//    // how popular it is??
//    let popularity: Double
//    // either releaseDate or firstAirDate
//    let releaseDate: String?
//    // no idea, theyre all false
//    let video: Bool?
//    // idk
//    let voteAverage: Double
//    // idk
//    let voteCount: Int
//    // sometimes title, sometimes name
//    let name: String?
//    // name in native language (this or title)
//    let originalName: String?
//    // this or release date
//    let firstAirDate: String?
//    // where the movie was made prob
//    let originCountry: [String]?
//
//    enum CodingKeys: String, CodingKey {
//        case adult
//        case backdropPath = "backdrop_path"
//        case id, title
//        case originalLanguage = "original_language"
//        case originalTitle = "original_title"
//        case overview
//        case posterPath = "poster_path"
//        case mediaType = "media_type"
//        case genreIDS = "genre_ids"
//        case popularity
//        case releaseDate = "release_date"
//        case video
//        case voteAverage = "vote_average"
//        case voteCount = "vote_count"
//        case name
//        case originalName = "original_name"
//        case firstAirDate = "first_air_date"
//        case originCountry = "origin_country"
//    }
//}
//
//// MARK: - Originals
//
//struct Originals: Codable {
//    let page: Int
//    let results: [OriginalsItem]
//    let totalPages, totalResults: Int
//
//    enum CodingKeys: String, CodingKey {
//        case page, results
//        case totalPages = "total_pages"
//        case totalResults = "total_results"
//    }
//}
//
//// MARK: - OriginalsItem: type for Originals results array
//
//struct OriginalsItem: Codable, Identifiable {
//    let backdropPath, firstAirDate: String
//    let genreIDS: [Int]
//    let id: Int
//    let name: String
//    let originCountry: [String]
//    let originalLanguage: Language
//    let originalName, overview: String
//    let popularity: Double
//    let posterPath: String
//    let voteAverage: Double
//    let voteCount: Int
//
//    enum CodingKeys: String, CodingKey {
//        case backdropPath = "backdrop_path"
//        case firstAirDate = "first_air_date"
//        case genreIDS = "genre_ids"
//        case id, name
//        case originCountry = "origin_country"
//        case originalLanguage = "original_language"
//        case originalName = "original_name"
//        case overview, popularity
//        case posterPath = "poster_path"
//        case voteAverage = "vote_average"
//        case voteCount = "vote_count"
//    }
//}
//
//// MARK: - TopRated
//
//struct TopRated: Codable {
//    let page: Int
//    let results: [TopRatedItem]
//    let totalPages, totalResults: Int
//
//    enum CodingKeys: String, CodingKey {
//        case page, results
//        case totalPages = "total_pages"
//        case totalResults = "total_results"
//    }
//}
//
//// MARK: - TopRatedItem: type for TopRated results array
//
//struct TopRatedItem: Codable, Identifiable {
//    let adult: Bool
//    let backdropPath: String
//    let genreIDS: [Int]
//    let id: Int
//    let originalLanguage, originalTitle, overview: String
//    let popularity: Double
//    let posterPath, releaseDate, title: String
//    let video: Bool
//    let voteAverage: Double
//    let voteCount: Int
//
//    enum CodingKeys: String, CodingKey {
//        case adult
//        case backdropPath = "backdrop_path"
//        case genreIDS = "genre_ids"
//        case id
//        case originalLanguage = "original_language"
//        case originalTitle = "original_title"
//        case overview, popularity
//        case posterPath = "poster_path"
//        case releaseDate = "release_date"
//        case title, video
//        case voteAverage = "vote_average"
//        case voteCount = "vote_count"
//    }
//}
//
//
//// MARK: - Category
//
//struct Category: Codable {
//    let page: Int
//    let results: [CategoryItem]
//    let totalPages, totalResults: Int
//
//    enum CodingKeys: String, CodingKey {
//        case page, results
//        case totalPages = "total_pages"
//        case totalResults = "total_results"
//    }
//}
//
//// MARK: - CategoryItem: type for Category results array
//
//struct CategoryItem: Codable, Identifiable {
//    let adult: Bool
//    let backdropPath: String?
//    let genreIDS: [Int]
//    let id: Int
////    let originalLanguage: Language
//    let originalTitle, overview: String
//    let popularity: Double
//    let posterPath: String
//    let releaseDate: String?
//    let title: String
//    let video: Bool
//    let voteAverage: Double
//    let voteCount: Int
//
//    enum CodingKeys: String, CodingKey {
//        case adult
//        case backdropPath = "backdrop_path"
//        case genreIDS = "genre_ids"
//        case id
////        case originalLanguage = "original_language"
//        case originalTitle = "original_title"
//        case overview, popularity
//        case posterPath = "poster_path"
//        case releaseDate = "release_date"
//        case title, video
//        case voteAverage = "vote_average"
//        case voteCount = "vote_count"
//    }
//}


