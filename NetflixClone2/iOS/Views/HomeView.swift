//
//  HomeView.swift
//  NetflixClone2
//
//  Created by Vineet Sansare on 06/04/24.
//

import SwiftUI

struct HomeView: View {
    var vm: HomeViewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
                        
            ScrollView(showsIndicators: false) {
                // Main VStack
                LazyVStack {
                    
                    TopRowButtons()
                    
                    TopMoviePreview(movie: exampleMovie2)
                        .frame(width: screen.width)
                        .padding(.top, -125)
                        .zIndex(-1)
                    
                    ForEach(vm.categories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovies(for: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                        }
                    }.foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }.buttonStyle(PlainButtonStyle())
            
            Spacer()
            Button {
                //
            } label: {
                Text("TVShows")
            }.buttonStyle(PlainButtonStyle())
            
            Spacer()
            Button {
                //
            } label: {
                Text("Movies")
            }.buttonStyle(PlainButtonStyle())
            
            Spacer()
            Button {
                //
            } label: {
                Text("MyList")
            }.buttonStyle(PlainButtonStyle())
        }
        .background(Color.black)
        .foregroundColor(.white)
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
