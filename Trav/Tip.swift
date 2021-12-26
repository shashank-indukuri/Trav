//
//  Tip.swift
//  Trav
//
//  Created by Shashank Indukuri on 12/26/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
