//
//  HomeView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ScrollView {
            
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
