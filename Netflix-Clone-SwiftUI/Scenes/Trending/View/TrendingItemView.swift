//
//  TrendingItemView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import SwiftUI


struct TrendingItemView: View {
    
    let result: Result
    
    var body: some View {
        VStack {
            poster
        }
    }
}

struct TrendingItemView_Previews: PreviewProvider {
    
    private static var previewResult: Result {
        let result = try! StaticJSONMapper.decode(file: "Trending", type: Trending.self)
        return result.results[0]
    }
    
    static var previews: some View {
        TrendingItemView(result: previewResult)
    }
}

private extension TrendingItemView {
    
    @ViewBuilder
    var poster: some View {
        if let posterURL = URL(string: "https://image.tmdb.org/t/p/w500\(result.posterPath)") {
            
            AsyncImage(url: posterURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250)
                    .clipped()
            } placeholder: {
                ProgressView()
            }
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        }
    }
}
