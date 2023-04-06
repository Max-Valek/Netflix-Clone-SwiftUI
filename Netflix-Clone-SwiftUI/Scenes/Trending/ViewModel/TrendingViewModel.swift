//
//  TrendingViewModel.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import Foundation

// simple view model to decode and store static json

final class TrendingViewModel: ObservableObject {
    
    @Published private(set) var trending: Trending
    
    init() {
        self.trending = try! StaticJSONMapper.decode(file: "Trending", type: Trending.self)
        print(self.trending)
    }
    
}

