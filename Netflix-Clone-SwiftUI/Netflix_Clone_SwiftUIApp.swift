//
//  Netflix_Clone_SwiftUIApp.swift
//  Netflix-Clone-SwiftUI
//
//  Created by Max Valek on 4/6/23.
//

import SwiftUI

@main
struct Netflix_Clone_SwiftUIApp: App {
    // I was trying to get rid of "[SceneConfiguration] Info.plist contained no UIScene configuration dictionary (looking for configuration named "(no name)")" error
//    init() {
//        let configuration = UISceneConfiguration(name: "MainScreenSceneConfiguration",
//                                                 sessionRole: .windowApplication)
//        UIApplication.shared.requestSceneSessionActivation(nil, userActivity: nil, options: nil, errorHandler: nil)
//    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
