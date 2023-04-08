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
    
    @ObservedObject var vm: CategoryViewModel
    
    @Environment(\.dismiss) var dismiss
    
    let item: Item
    
    let gridRows = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 12) {
                
                backdrop
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    titleText
                    
                    dateText
                    
                    mostLiked
                    
                    play
                    
                    download
                    
                    Text(item.overview)

                }
                
                HStack(alignment: .bottom, spacing: 50) {
                    
                    VStack(spacing: 8) {
                        Image(systemName: "plus")
                            .font(.title)
                        
                        Text("My List")
                            .foregroundColor(.secondary)
                    }
                    
                    VStack(spacing: 8) {
                        Image(systemName: "hand.thumbsup")
                            .font(.title)
                        
                        Text("Rate")
                            .foregroundColor(.secondary)
                    }
                    
                    VStack(spacing: 8) {
                        Image(systemName: "paperplane")
                            .font(.title)
                        
                        Text("Share")
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.vertical)
                
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 100, height: 4)
                    .foregroundColor(Color(.systemRed))
                
                VStack(alignment: .leading) {
                    Text("More Like This")
                        .font(.system(size: 18).bold())
                    
                    LazyVGrid(columns: gridRows) {
                        ForEach(0..<4) { index in
                            if let item = vm.items?.results[index] {
                                Button {
                                    self.dismiss()
                                } label: {
                                    CategoryItemView(item: item, vm: vm)
                                }
                            }
                        }
                    }
                }
                
                Spacer()
            }
            .padding(.leading)
            .padding(.top)
        .preferredColorScheme(.dark)
        }
    }
}

struct CategoryItemDetailView_Previews: PreviewProvider {
    
    private static var previewItem: Item {
        let result = try! StaticJSONMapper.decode(file: "Action", type: ItemsList.self)
        return result.results[0]
    }
    
    static var previews: some View {
        CategoryItemDetailView(vm: CategoryViewModel(category: .action), item: previewItem)
    }
}

private extension CategoryItemDetailView {
    
    @ViewBuilder
    private var backdrop: some View {
        if let path = item.backdropPath, let url = URL(string: "https://image.tmdb.org/t/p/w500\(path)") {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
                
            } placeholder: {
                ProgressView()
            }
        }
    }
    
    @ViewBuilder
    private var titleText: some View {
        // title/name
        if let title = item.title {
            Text(title)
                .font(.system(size: 20).bold())
        } else {
            Text(item.name ?? "Unknown name")
                .font(.system(size: 20).bold())
        }
    }
    
    @ViewBuilder
    private var dateText: some View {
        // release/first air date
        if let date = item.releaseDate {
            Text(date)
        } else {
            Text(item.firstAirDate ?? "Unkown date")
        }
    }
    
    @ViewBuilder
    private var mostLiked: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .padding(8)
                .background(Color(.systemRed), in: RoundedRectangle(cornerRadius: 4))
            
            Text("Most Liked")
                .font(.system(size: 18).bold())
        }
    }
    
    @ViewBuilder
    private var play: some View {
        Button {
            //
        } label: {
            Label("Play", systemImage: "play.fill")
        }
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .foregroundColor(.black)
        .background(.white, in: RoundedRectangle(cornerRadius: 4, style: .continuous))
    }
    
    @ViewBuilder
    private var download: some View {
        Button {
            //
        } label: {
            Label("Download", systemImage: "arrow.down.to.line")
        }
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .foregroundColor(.white)
        .background(Color(.darkGray), in: RoundedRectangle(cornerRadius: 4, style: .continuous))
    }
}
