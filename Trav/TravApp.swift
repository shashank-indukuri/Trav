//
//  TravApp.swift
//  Trav
//
//  Created by Shashank Indukuri on 12/25/21.
//

import SwiftUI

@main
struct TravApp: App {
    @StateObject var locations = Locations()
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                NavigationView {
                    WorldMap()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
            }
            .environmentObject(locations)
        }
    }
}
