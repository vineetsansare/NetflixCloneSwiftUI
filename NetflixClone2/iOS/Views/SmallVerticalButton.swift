//
//  SmallVerticalButton.swift
//  NetflixClone2
//
//  Created by Vineet Sansare on 06/04/24.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool
    var imageName: String {
        isOn == true ? isOnImage : isOffImage
    }
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                Text("My List")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black
            .edgesIgnoringSafeArea(.all)
        
        SmallVerticalButton(
            text: "My List",
            isOnImage: "checkmark",
            isOffImage: "plus",
            isOn: false
        ) {
            print("buttonTapped")
        }
    }
}
