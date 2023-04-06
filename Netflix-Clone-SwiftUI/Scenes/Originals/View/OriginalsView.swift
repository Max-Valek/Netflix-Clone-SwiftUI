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
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(vm.originals.results) { result in
                    OriginalsItemView(original: result)
                }
            }
            
        }
    }
}

struct OriginalsView_Previews: PreviewProvider {
    static var previews: some View {
        OriginalsView()
    }
}
