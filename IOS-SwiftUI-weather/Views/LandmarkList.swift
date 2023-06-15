//
//  LandmarklList.swift
//  IOS-SwiftUI-weather
//
//  Created by Weykon Kong on 2023/6/12.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List (landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                }
                label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
        }
    }
}

#Preview {
    LandmarkList()
}
