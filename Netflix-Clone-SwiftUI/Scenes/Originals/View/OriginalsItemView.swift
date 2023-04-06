//
//  OriginalsItemView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import SwiftUI

struct OriginalsItemView: View {
    
    let original: Original
    
    var body: some View {
        VStack {
            poster
        }
    }
}

struct OriginalsItemView_Previews: PreviewProvider {
    
    private static var previewResult: Original {
        let result = try! StaticJSONMapper.decode(file: "Originals", type: Originals.self)
        return result.results[0]
    }
    
    static var previews: some View {
        OriginalsItemView(original: previewResult)
    }
}

private extension OriginalsItemView {
    
    @ViewBuilder
    var poster: some View {
        if let posterURL = URL(string: "https://image.tmdb.org/t/p/w500\(original.posterPath)") {
            
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
