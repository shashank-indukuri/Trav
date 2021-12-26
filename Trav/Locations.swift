//
//  Locations.swift
//  Trav
//
//  Created by Shashank Indukuri on 12/25/21.
//

import Foundation
import SwiftUI

class Locations: ObservableObject {
    let locations: [Location]
    let randomLocation: Int
    var primary: Location {
        locations[randomLocation]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        locations = try! JSONDecoder().decode([Location].self, from: data)
        randomLocation = Int.random(in: 0...locations.count)
    }
}
