//
//  MovieDetail.swift
//  NetflixClone2
//
//  Created by Vineet Sansare on 08/04/24.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        // close this view
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 26))
                    }
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubHeadline(movie: movie)
                        
                        if let promo = movie.promotionHeadline {
                            Text(promo)
                                .bold()
                        }
                        
                        PlayButton(
                            text: "Play",
                            imageName: "play.fill",
                            backgroundColor: .red
                        ) {
                            // action
                        }
                        .frame(width: screen.width)
                        .foregroundColor(.white)
                        
                        //EpisodeInfo
                        
                        CurrentEpisodeInformation(movie: movie)
                                                
                        CastInfoView(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(
                                text: "My List",
                                isOnImage: "checkmark",
                                isOffImage: "plus",
                                isOn: true
                            ) {
                                //
                            }
                            
                            SmallVerticalButton(
                                text: "Rate",
                                isOnImage: "hand.thumbsup.fill",
                                isOffImage: "hand.thumbsup",
                                isOn: true
                            ) {
                                //
                            }
                            
                            SmallVerticalButton(
                                text: "Share",
                                isOnImage: "square.and.arrow.up",
                                isOffImage: "square.and.arrow.up",
                                isOn: true
                            ) {
                                //
                            }
                            
                            Spacer()
                        }.padding(.leading, 20)
                        
                    }.padding(.horizontal, 20)
                }
                
                Spacer()
            }
            .foregroundColor(.white) 
        }
    }
}

#Preview {
    MovieDetail(movie: exampleMovie2)
}

struct MovieInfoSubHeadline: View {
    var movie: Movie
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
            HDView(text: "HD")
            
        }
        .padding(.vertical, 6)
        .foregroundColor(.gray)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct HDView: View {
    var text: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(text)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct CastInfoView: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()
            }
            HStack {
                Text("Creators: \(movie.creators)")
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()
            }
        }.padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }.padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
