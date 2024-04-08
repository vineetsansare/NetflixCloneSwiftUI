//
//  WhiteButton.swift
//  NetflixClone2
//
//  Created by Vineet Sansare on 08/04/24.
//

import SwiftUI

struct WhiteButton: View {
    var text: String
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .foregroundColor(.black)
                    .font(.system(size: 16))
                    .bold()
                Spacer()
            }
            .padding(6)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ZStack {
        Color.black
            .edgesIgnoringSafeArea(.all)
        WhiteButton(text: "PLAY", imageName: "play.fill") {
            // Play button tapped
        }
    }
}
