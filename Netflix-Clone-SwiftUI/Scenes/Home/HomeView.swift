//
//  HomeView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            featured
            
            VStack(alignment: .leading) {
                Text("Trending")
                    .fontWeight(.bold)
                    .padding(.leading)
                
                TrendingView()
            }
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Netflix Originals")
                    .fontWeight(.bold)
                    .padding(.leading)
                
                OriginalsView()
            }
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Top Rated")
                    .fontWeight(.bold)
                    .padding(.leading)
                
                TopRatedView()
            }
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Action")
                    .fontWeight(.bold)
                    .padding(.leading)
                
                GenreView(genre: Genre.action, vm: GenreViewModel(genre: Genre.action))
            }
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Comedy")
                    .fontWeight(.bold)
                    .padding(.leading)
                
                GenreView(genre: Genre.comedy, vm: GenreViewModel(genre: Genre.comedy))
            }
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Horror")
                    .fontWeight(.bold)
                    .padding(.leading)
                
                GenreView(genre: Genre.horror, vm: GenreViewModel(genre: Genre.horror))
            }
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Romance")
                    .fontWeight(.bold)
                    .padding(.leading)
                
                GenreView(genre: Genre.romance, vm: GenreViewModel(genre: Genre.romance))
            }
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Documentaries")
                    .fontWeight(.bold)
                    .padding(.leading)
                
                GenreView(genre: Genre.documentary, vm: GenreViewModel(genre: Genre.documentary))
            }
            .padding(.bottom)
        }
        .preferredColorScheme(.dark)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}

extension HomeView {
    
    @ViewBuilder
    var featured: some View {
        ZStack {
            Image("better_call_saul")
                .resizable()
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack {
                
                Spacer()
                
                HStack(spacing: 2) {
                    Text("Offbeat")
                    Text("•")
                        .foregroundColor(Color(.systemOrange))
                    Text("Violent")
                    Text("•")
                        .foregroundColor(Color(.systemOrange))
                    Text("Horror Comedy")
                    Text("•")
                        .foregroundColor(Color(.systemOrange))
                    Text("Ensemble")
                }
                .font(.caption).bold()
                
                HStack {
                    
                    Button {
                        // play button
                    } label: {
                        Image(systemName: "play.fill")
                        Text("Play")
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 4)
                    .foregroundColor(.black)
                    .background(.white, in: RoundedRectangle(cornerRadius: 4))
                    
                    Button {
                        // add to list
                    } label: {
                        Image(systemName: "plus")
                        Text("My List")
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 4)
                    .foregroundColor(.white)
                    .background(Color(.darkGray), in: RoundedRectangle(cornerRadius: 4))

                }
                
            }
            .padding(.bottom)
        }
        .frame(width: 330)
        .padding(.bottom, 40)
        .shadow(color: Color.secondary, radius: 10)
    }
}
