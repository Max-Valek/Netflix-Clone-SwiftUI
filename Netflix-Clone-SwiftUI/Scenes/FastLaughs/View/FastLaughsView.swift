//
//  FastLaughsView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct FastLaughsView: View {
    var body: some View {
        
        VStack {
            
            Text("Fast Laughs")
            
            Text("This is basically a TikTok-like feed with movie clips")
        }
        .padding(.horizontal, 8)
        .preferredColorScheme(.dark)
    }
}

struct FastLaughsView_Previews: PreviewProvider {
    static var previews: some View {
        FastLaughsView()
    }
}
