//
//  NewAndHotViewModel.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import Foundation

final class NewAndHotViewModel: ObservableObject {
    
    @Published var items: ItemsList?
    
    init() {
        do {
            let upcomingItems = try StaticJSONMapper.decode(file: "Upcoming", type: ItemsList.self)
            DispatchQueue.main.async {
                self.items = upcomingItems
            }
        } catch {
            print("Failed to fetch upcoming items data: \(error)")
        }
    }
    
}
