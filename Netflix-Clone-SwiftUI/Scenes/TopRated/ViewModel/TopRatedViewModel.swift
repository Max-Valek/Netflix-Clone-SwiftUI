//
//  TopRatedViewModel.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import Foundation

final class TopRatedViewModel: ObservableObject {
    
    @Published private(set) var items: ItemsList
    
    init() {
        self.items = try! StaticJSONMapper.decode(file: "TopRated", type: ItemsList.self)
    }
}
