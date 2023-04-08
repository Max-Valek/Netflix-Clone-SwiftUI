//
//  HomeTopView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI

struct TopView: View {
    
    var title: String
    
    var body: some View {
        
        HStack {
            
            Text(title)
                
            
            Spacer()
            
            HStack(spacing: 24) {
                Image(systemName: "tv")
                
                Image(systemName: "magnifyingglass")
                
                Image(systemName: "person.crop.square.fill")
            }
        }
        .font(.title2)
        .padding(.horizontal, 24)
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(title: "For Maximus")
    }
}
