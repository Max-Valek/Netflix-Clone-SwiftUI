//
//  GenreViewModel.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import Foundation

final class GenreViewModel: ObservableObject {
    
    @Published var category: Category? // make category optional
    
    let genre: Genre
    
    init(genre: Genre) {
        self.genre = genre
    }
    
    func fetchCategoryData() {
        do {
            let category = try StaticJSONMapper.decode(file: genre.file, type: Category.self) // decode the JSON data
            DispatchQueue.main.async {
                self.category = category // update the category property on the main thread
            }
        } catch {
            print("Failed to fetch category data: \(error)")
        }
    }
}
