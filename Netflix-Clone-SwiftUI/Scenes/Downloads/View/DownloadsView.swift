//
//  DownloadsView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct DownloadsView: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 24) {
            
            TopView(title: "Downloads")
            
            HStack {
                
                HStack {
                    Image(systemName: "gearshape")
                    Text("Smart Downloads")
                }
                
                Spacer()
                
                Image(systemName: "pencil")
            }
            .padding(.horizontal, 24)
            
            HStack {
                Image(systemName: "person.crop.square.fill")
                    .font(.title2)
                
                Text("Maximus")
                    .font(.title3)
                    .bold()
            }
            .padding(.horizontal, 24)
            
            HStack {
                
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.gray)
                    .frame(width: 120, height: 68)
                
                VStack(alignment: .leading) {
                    Text("Breaking Bad")
                        .font(.system(size: 16).bold())
                    
                    Text("TV-MA | 7 Episodes | 1.05 GB")
                        .font(.system(size: 12).bold())
                        .foregroundColor(.gray)
                    
                    Text("Expires on 04/20")
                        .font(.system(size: 12).bold())
                        .foregroundColor(.red)
                }
            }
            .padding(.horizontal, 24)
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
