//
//  HomeViewModel.swift
//  NetflixClone2
//
//  Created by Vineet Sansare on 06/04/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    
    public var categories: [String] {
        movies.keys.map({
            String($0)
        })
    }
    
    init() {
        setupMovies()
    }
    
    public func getMovies(for category: String) -> [Movie] {
        movies[category] ?? []
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Standup Comedy"] = exampleMovies.shuffled()
    }
}
