//
//  UpcomingView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct UpcomingView: View {
    
    @StateObject var vm = UpcomingViewModel()
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            HStack {
                Button {
                    //
                } label: {
                    Text("🍿 Coming Soon")
                        .padding(.horizontal)
                        .padding(.vertical, 7)
                        .foregroundColor(.black)
                        .background(.white)
                        .clipShape(Capsule())
                }
                
                Spacer()
            }
            .padding(.leading, 24)
            
            ForEach(vm.items?.results ?? []) { item in
                UpcomingItemView(item: item)
            }
        }
    }
}

struct UpcomingView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingView()
            .preferredColorScheme(.dark)
    }
}
