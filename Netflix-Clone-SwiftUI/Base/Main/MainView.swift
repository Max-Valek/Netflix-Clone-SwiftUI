//
//  MainView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct MainView: View {
    
    @State var userSelected = false
    
    var body: some View {
        
        if userSelected {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                NewAndHotView()
                    .tabItem {
                        Label("New & Hot", systemImage: "play.rectangle.on.rectangle")
                    }
                
                FastLaughsView()
                    .tabItem {
                        Label("Fast Laughs", systemImage: "face.smiling.inverse")
                    }
                
                DownloadsView()
                    .tabItem {
                        Label("Downloads", systemImage: "arrow.down.circle")
                    }
            }
            .preferredColorScheme(.dark)
        }
        else {
            SelectUserView(userSelected: $userSelected)
                .preferredColorScheme(.dark)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
