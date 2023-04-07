//
//  CategoryItemView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI

struct CategoryItemView: View {
    
    let item: Item
    
    var body: some View {
        
        VStack {
            if let posterURL = URL(string: "https://image.tmdb.org/t/p/w500\(item.posterPath)") {
                
                AsyncImage(url: posterURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 160, height: 240)
                        .clipped()
                } placeholder: {
                    ProgressView()
                        .frame(width: 160, height: 240)
                }
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            }
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    
    private static var previewItem: Item {
        let result = try! StaticJSONMapper.decode(file: "Action", type: ItemsList.self)
        return result.results[0]
    }
    
    static var previews: some View {
        CategoryItemView(item: previewItem)
    }
}
