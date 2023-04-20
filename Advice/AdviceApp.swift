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
            AdviceView()
            // make the database available to all child views through the enviornment
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}
