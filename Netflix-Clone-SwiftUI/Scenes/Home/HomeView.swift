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
                    .padding(.leading)
                
                TrendingView()
            }
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Netflix Originals")
                    .padding(.leading)
                
                OriginalsView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
