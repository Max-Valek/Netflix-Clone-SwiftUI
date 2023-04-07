//
//  CategoryViewModel.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import Foundation

final class CategoryViewModel: ObservableObject {
    
    @Published var items: ItemsList? // make category optional
    
    let category: Category
    
    init(category: Category) {
        self.category = category
    }
    
    func fetchCategoryData() {
        do {
            let categoryItems = try StaticJSONMapper.decode(file: category.file, type: ItemsList.self)
            DispatchQueue.main.async {
                self.items = categoryItems
            }
        } catch {
            print("Failed to fetch category data: \(error)")
        }
    }
}
