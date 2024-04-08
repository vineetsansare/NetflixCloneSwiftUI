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
    
    //MovieDetail
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    var episodes: [Episode]?
    var promotionHeadline: String?
    
    // Personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisode: CurrentEpisodeInfo
    var cast: String
    var creators: String
    
    var numberOfSeasonsDisplay: String {
        if let numberOfSeasons {
            if numberOfSeasons == 1 {
                return "1 Season"
            } else {
                return "\(numberOfSeasons) Seasons"
            }
        }
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let currentEpisode {
            return "S\(currentEpisode.season) E\(currentEpisode.episode) \(currentEpisode.episodeName)"
        } else {
            return "S\(defaultEpisode.season) E\(defaultEpisode.episode) \(defaultEpisode.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let currentEpisode {
            return currentEpisode.description
        } else {
            return defaultEpisode.description
        }
    }
}


struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
