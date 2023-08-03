//
//  SwiftDataExampleApp.swift
//  SwiftDataExample
//
//  Created by Ravikanth Thummala on 8/2/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataExampleApp: App {

    var body: some Scene {
        WindowGroup {
            UserList()
        }
        .modelContainer(for: User.self)
    }
}
