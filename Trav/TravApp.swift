//
//  TravApp.swift
//  Trav
//
//  Created by Shashank Indukuri on 12/25/21.
//

import SwiftUI

@main
struct TravApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(location: Locations().primary)
            }
        }
    }
}
