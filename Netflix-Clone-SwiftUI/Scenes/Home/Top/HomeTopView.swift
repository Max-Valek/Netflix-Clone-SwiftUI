//
//  HomeTopView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/7/23.
//

import SwiftUI

struct HomeTopView: View {
    var body: some View {
        
        HStack {
            
            Text("For Maximus")
                
            
            Spacer()
            
            HStack(spacing: 24) {
                Image(systemName: "tv")
                
                Image(systemName: "magnifyingglass")
                
                Image(systemName: "person.crop.circle.fill")
            }
        }
        .font(.title2)
        .padding(.horizontal, 24)
    }
}

struct HomeTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopView()
    }
}
