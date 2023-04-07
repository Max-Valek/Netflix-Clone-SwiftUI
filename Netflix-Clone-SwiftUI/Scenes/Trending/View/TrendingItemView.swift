//
//  TrendingItemView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import SwiftUI


struct TrendingItemView: View {
    
    let item: Item
    
    var body: some View {
        VStack {
            poster
        }
    }
}

struct TrendingItemView_Previews: PreviewProvider {
    
    private static var previewResult: Item {
        let result = try! StaticJSONMapper.decode(file: "Trending", type: ItemsList.self)
        return result.results[0]
    }
    
    static var previews: some View {
        TrendingItemView(item: previewResult)
    }
}

private extension TrendingItemView {
    
    @ViewBuilder
    var poster: some View {
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
