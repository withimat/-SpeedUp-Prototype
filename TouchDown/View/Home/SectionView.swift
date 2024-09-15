//
//  SectionView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 9.09.2024.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTIES
    @State var rotateClockwise: Bool
    
    
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing:0){
            Spacer()
            Text("categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
            
        }
        .background(colorgray.cornerRadius(12))
        .frame(width: 85,height: 140)
    }
}

#Preview {
    SectionView(rotateClockwise: true)
}
