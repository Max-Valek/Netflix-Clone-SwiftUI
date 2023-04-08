//
//  CategoryItemDetailView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI

/*
 
 Detail view sheet that is presented when a movie/show is clicked on
 
 */
struct CategoryItemDetailView: View {
    
    let item: Item
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            if let path = item.backdropPath, let url = URL(string: "https://image.tmdb.org/t/p/w500\(path)") {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFit()
                    
                } placeholder: {
                    ProgressView()
                }

            }
            
            VStack(alignment: .leading, spacing: 12) {
                
                // title/name
                if let title = item.title {
                    Text(title)
                } else {
                    Text(item.name ?? "Unknown name")
                }
                
                // release/first air date
                if let date = item.releaseDate {
                    Text(date)
                } else {
                    Text(item.firstAirDate ?? "Unkown date")
                }
                
                HStack {
                    Image(systemName: "hand.thumbsup.fill")
                    
                    Text("Most Liked")
                }
                
                Button {
                    //
                } label: {
                    Label("Play", systemImage: "play.fill")
                }
                
                Button {
                    //
                } label: {
                    Label("Download", systemImage: "arrow.down.to.line")
                }

            }
            .padding(.leading)
            .padding(.top)
            
            Spacer()
        }
    }
}

struct CategoryItemDetailView_Previews: PreviewProvider {
    
    private static var previewItem: Item {
        let result = try! StaticJSONMapper.decode(file: "Action", type: ItemsList.self)
        return result.results[0]
    }
    
    static var previews: some View {
        CategoryItemDetailView(item: previewItem)
    }
}
