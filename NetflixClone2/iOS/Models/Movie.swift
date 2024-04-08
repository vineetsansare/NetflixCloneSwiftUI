//
//  Movie.swift
//  NetflixClone2
//
//  Created by Vineet Sansare on 06/04/24.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
}
