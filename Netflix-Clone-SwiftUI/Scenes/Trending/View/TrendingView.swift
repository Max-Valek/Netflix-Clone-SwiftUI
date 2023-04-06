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
        
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(vm.trending.results) { result in
                    TrendingItemView(result: result)
                }
            }
            
        }
    }
}

struct TrendingView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingView()
    }
}