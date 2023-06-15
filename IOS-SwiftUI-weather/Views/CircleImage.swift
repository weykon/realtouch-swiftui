//
//  SwiftUIView.swift
//  IOS-SwiftUI-weather
//
//  Created by Weykon Kong on 2023/6/12.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
      image
            .resizable()
            .frame(width: 200.0, height: 200.0)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray,lineWidth:4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("icon"))
}
