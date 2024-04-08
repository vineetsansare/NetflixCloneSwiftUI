//
//  TopMoviePreview.swift
//  NetflixClone2
//
//  Created by Vineet Sansare on 06/04/24.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    func isLastCategory(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        Text(category).font(.footnote)
                        if !isLastCategory(category) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 4))
                        }
                    }
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "MyList",
                                        isOnImage: "checkmark",
                                        isOffImage: "plus",
                                        isOn: false) {
                        //
                    }
                    Spacer()
                    PlayButton(text: "PLAY",
                                imageName: "play.fill") {
                        //
                    }
                                .frame(width: 120)
                    
                    Spacer()
                    SmallVerticalButton(text: "Info",
                                        isOnImage: "info.circle",
                                        isOffImage: "info.circle",
                                        isOn: true) {
                        //
                    }
                    Spacer()
                }
            }.background(LinearGradient.defaultBlackOpacity)
                .padding(.top, 250)
        }.foregroundColor(.white)
    }
}

#Preview {
    TopMoviePreview(movie: exampleMovie5)
}
