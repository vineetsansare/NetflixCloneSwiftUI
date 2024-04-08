//
//  Episode.swift
//  NetflixClone2
//
//  Created by Vineet Sansare on 08/04/24.
//

import Foundation

struct Episode: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var season: Int
    var description: String
    var length: Int
    
    var thumbnailImageURLString: String
    var thumbnailImageURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
