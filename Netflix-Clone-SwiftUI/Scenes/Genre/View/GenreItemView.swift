//
//  GenreItemView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI


struct GenreItemView: View {
    
    let item: CategoryItem
    
    var body: some View {
        VStack {
            poster
        }
    }
}

struct GenreItemView_Previews: PreviewProvider {
    private static var previewResult: CategoryItem {
        let result = try! StaticJSONMapper.decode(file: "Action", type: Category.self)
        return result.results[0]
    }
    
    static var previews: some View {
        GenreItemView(item: previewResult)
    }
}

private extension GenreItemView {
    
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
