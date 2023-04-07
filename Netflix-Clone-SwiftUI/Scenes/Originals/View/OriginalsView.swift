//
//  OriginalsView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import SwiftUI

struct OriginalsView: View {
    @StateObject private var vm = OriginalsViewModel()
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Netflix Originals")
                .fontWeight(.bold)
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(vm.items.results) { result in
                        OriginalsItemView(item: result)
                    }
                }
                
            }
        }
        .padding(.bottom)
    }
}

struct OriginalsView_Previews: PreviewProvider {
    static var previews: some View {
        OriginalsView()
    }
}
