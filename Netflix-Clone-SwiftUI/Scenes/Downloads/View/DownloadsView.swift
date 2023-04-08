//
//  DownloadsView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct DownloadsView: View {
    
    var body: some View {
        
        VStack {
            
            TopView(title: "Downloads")
        }
        .padding(.horizontal, 8)
        .preferredColorScheme(.dark)
    }
}

struct DownloadsView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadsView()
    }
}
