//
//  TrendingView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import SwiftUI

struct TrendingView: View {
    
    @StateObject private var vm = TrendingViewModel()
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Trending")
                .fontWeight(.bold)
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(vm.trending.results) { result in
                        TrendingItemView(result: result)
                    }
                }
                
            }
        }
        .padding(.bottom)
    }
}

struct TrendingView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingView()
    }
}
