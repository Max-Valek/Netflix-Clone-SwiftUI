//
//  GenreViewModel.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import Foundation

final class GenreViewModel: ObservableObject {
    
    @Published var items: ItemsList? // make category optional
    
    let genre: Genre
    
    init(genre: Genre) {
        self.genre = genre
    }
    
    func fetchCategoryData() {
        do {
            let genreItems = try StaticJSONMapper.decode(file: genre.file, type: ItemsList.self)
            DispatchQueue.main.async {
                self.items = genreItems
            }
        } catch {
            print("Failed to fetch category data: \(error)")
        }
    }
}
