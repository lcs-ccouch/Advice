//
//  AdviceApp.swift
//  Advice
//
//  Created by calum couch on 2023-04-19.
//

import SwiftUI

@main
struct AdviceApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                AdviceView()
                    .tabItem {
                        Label("Fresh", systemImage: "carrot")
                    }
                FavouritesView()
                    .tabItem {
                        Label("Favourites", systemImage: "face.smiling")
                    }
            }
            // make the database available to all child views through the enviornment
            .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}
