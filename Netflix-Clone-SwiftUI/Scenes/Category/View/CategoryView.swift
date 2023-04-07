//
//  CategoryView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI

struct CategoryView: View {
    
    var title: String
    
    var category: Category
    
    @StateObject var vm: CategoryViewModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(title)
                .fontWeight(.bold)
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                LazyHStack {
                    ForEach(vm.items?.results ?? []) { result in // use optional chaining to safely unwrap category
                        CategoryItemView(item: result)
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

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(title: "Action", category: Category.action, vm: CategoryViewModel(category: Category.action))
    }
}
