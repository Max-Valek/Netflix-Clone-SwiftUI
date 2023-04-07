//
//  OriginalsViewModel.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import Foundation

final class OriginalsViewModel: ObservableObject {
    
    @Published private(set) var items: ItemsList
    
    init() {
        self.items = try! StaticJSONMapper.decode(file: "Originals", type: ItemsList.self)
    }
}
