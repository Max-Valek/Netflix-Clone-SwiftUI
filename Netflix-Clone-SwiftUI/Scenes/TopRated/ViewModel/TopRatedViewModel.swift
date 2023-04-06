//
//  TopRatedViewModel.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import Foundation

final class TopRatedViewModel: ObservableObject {
    
    @Published private(set) var topRated: TopRated
    
    init() {
        self.topRated = try! StaticJSONMapper.decode(file: "TopRated", type: TopRated.self)
    }
}
