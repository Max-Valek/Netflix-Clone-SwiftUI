//
//  NewAndHotView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct NewAndHotView: View {
    
    var body: some View {
        
        VStack {
            
            TopView(title: "New & Hot")
        }
        .padding(.horizontal, 8)
        .preferredColorScheme(.dark)
    }
}

struct NewAndHotView_Previews: PreviewProvider {
    static var previews: some View {
        NewAndHotView()
    }
}
