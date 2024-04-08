//
//  StandardHomeMovie.swift
//  NetflixClone2
//
//  Created by Vineet Sansare on 06/04/24.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

#Preview {
    StandardHomeMovie(movie: exampleMovie1)
}
