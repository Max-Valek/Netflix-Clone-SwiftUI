//
//  OriginalsViewModel.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import Foundation

final class OriginalsViewModel: ObservableObject {
    
    @Published private(set) var originals: Originals
    
    init() {
        self.originals = try! StaticJSONMapper.decode(file: "Originals", type: Originals.self)
//        print(self.originals)
    }
    
}
