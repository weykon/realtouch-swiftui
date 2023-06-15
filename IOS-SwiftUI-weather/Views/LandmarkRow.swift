//
//  LandmarkRow.swift
//  IOS-SwiftUI-weather
//
//  Created by Weykon Kong on 2023/6/12.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: landmarks[1])
        LandmarkRow(landmark: landmarks[2])
    }
    .previewLayout(.fixed(width: 300, height: 70))
}
