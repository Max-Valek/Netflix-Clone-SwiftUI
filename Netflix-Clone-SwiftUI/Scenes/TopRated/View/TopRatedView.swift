//
//  TopRatedView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import SwiftUI

struct TopRatedView: View {
    
    @StateObject private var vm = TopRatedViewModel()
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHStack {
                ForEach(vm.topRated.results) { result in
                    TopRatedItemView(topRated: result)
                }
            }
        }
    }
}

struct TopRatedView_Previews: PreviewProvider {
    static var previews: some View {
        TopRatedView()
    }
}
