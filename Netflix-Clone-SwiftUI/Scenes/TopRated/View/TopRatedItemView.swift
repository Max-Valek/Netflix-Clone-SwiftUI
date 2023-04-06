//
//  TopRatedItemView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import SwiftUI

struct TopRatedItemView: View {
    
    let topRated: TopRatedItem
    
    var body: some View {
        VStack {
            poster
        }
    }
}

struct TopRatedItemView_Previews: PreviewProvider {
    private static var previewResult: TopRatedItem {
        let result = try! StaticJSONMapper.decode(file: "TopRated", type: TopRated.self)
        return result.results[0]
    }
    
    static var previews: some View {
        TopRatedItemView(topRated: previewResult)
    }
}

private extension TopRatedItemView {
    
    @ViewBuilder
    var poster: some View {
        if let posterURL = URL(string: "https://image.tmdb.org/t/p/w500\(topRated.posterPath)") {
            
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
