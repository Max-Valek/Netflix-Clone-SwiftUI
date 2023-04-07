//
//  GenreView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI

struct GenreView: View {
    
    var genre: Genre // make genre a variable
    
    @StateObject var vm: GenreViewModel // remove the initialization
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHStack {
                ForEach(vm.category?.results ?? []) { result in // use optional chaining to safely unwrap category
                    GenreItemView(item: result)
                }
            }
        }
        .onAppear {
            vm.fetchCategoryData() // call fetchCategoryData to fetch data when the view appears
        }
    }
}

struct GenreView_Previews: PreviewProvider {
    static var previews: some View {
        GenreView(genre: Genre.action, vm: GenreViewModel(genre: Genre.action))
    }
}
