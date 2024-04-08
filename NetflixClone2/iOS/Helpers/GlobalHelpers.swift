//
//  GlobalHelpers.swift
//  NetflixClone2
//
//  Created by Vineet Sansare on 06/04/24.
//

import Foundation
import UIKit
import SwiftUI

let screen = UIScreen.main.bounds

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travellers", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Dunki", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannible", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"])

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

extension LinearGradient {
    static let defaultBlackOpacity = LinearGradient(
        gradient: Gradient(
            colors: [
                Color.red.opacity(0),
                Color.black.opacity(0.95)
            ]
        ),
        startPoint: .top,
        endPoint: .bottom
    )
}
