//
//  UpcomingViewModel.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import Foundation

final class UpcomingViewModel: ObservableObject {
    
    @Published var items: ItemsList? // make category optional
    
    init() {
        do {
            let upcoming = try StaticJSONMapper.decode(file: "Upcoming", type: ItemsList.self)
            DispatchQueue.main.async {
                self.items = upcoming
            }
        } catch {
            print("Failed to fetch category data: \(error)")
        }
    }
    
}
