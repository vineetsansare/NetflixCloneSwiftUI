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

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 1, 
                          defaultEpisode: exampleEpisodeInfo1,
                          cast: "Hrithik Roshan, Kareena Kapoor",
                          creators: "Sanjay Leela Bhansali")
let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Travellers",
                          thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 2,
                          promotionHeadline: "Best rated show",
                          defaultEpisode: exampleEpisodeInfo1,
                          cast: "Tiger Shroff, Kriti Sanon",
                          creators: "David Dhawan")
let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 3, 
                          defaultEpisode: exampleEpisodeInfo1,
                          cast: "Varun Dhawan, Jhanvi Kapoor",
                          creators: "Dimon Tonk")
let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Dunki",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 4,
                          promotionHeadline: "New episodes coming soon", 
                          defaultEpisode: exampleEpisodeInfo1,
                          cast: "Anil Kapoor, Tabu",
                          creators: "Sanjay Dutt")
let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Hannible",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 5, 
                          defaultEpisode: exampleEpisodeInfo1,
                          cast: "Vidyut Jamwal, Ayushman K.",
                          creators: "Jojo Kay")
let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "AfterLife",
                          thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
                          categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          promotionHeadline: "Watch Season 6 Now", 
                          defaultEpisode: exampleEpisodeInfo1,
                          cast: "Sahahid Kapoor, Alia Bhatt",
                          creators: "Ram Kapoor")

let exampleEpisodeInfo1 = CurrentEpisodeInfo(
    episodeName: "Beginings and Endings",
    description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of the Winden perished in an apocalyptic event.",
    season: 2,
    episode: 1
)

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
