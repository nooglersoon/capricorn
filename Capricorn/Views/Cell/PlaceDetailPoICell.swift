//
//  PlaceDetailPoICell.swift
//  Capricorn
//
//  Created by fauzia076860 on 09/01/24.
//

import SwiftUI

struct PlaceDetailPoICell: View {
    let index: Int
    
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            Image("photo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 160, height: 100)
                .clipped()
            
            LinearGradient(
                gradient: Gradient(
                    colors: [Color.black.opacity(1.0), Color.black.opacity(0.0)]),
                startPoint: .bottom,
                endPoint: .center
            )
            .frame(width: 160, height: 100)
            .clipped()
            
            Text("Item \(index)")
                .foregroundColor(.white)
                .bold()
                .font(.caption)
                .padding(8)
            
        }
        .cornerRadius(8)
    }
}
