//
//  MainView.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
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
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
