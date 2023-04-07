//
//  GenreView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI

struct GenreView: View {
    
    var title: String
    
    var genre: Genre
    
    @StateObject var vm: GenreViewModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(title)
                .fontWeight(.bold)
                .padding(.leading)
            
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
        .padding(.bottom)
    }
}

struct GenreView_Previews: PreviewProvider {
    static var previews: some View {
        GenreView(title: "Action", genre: Genre.action, vm: GenreViewModel(genre: Genre.action))
    }
}
