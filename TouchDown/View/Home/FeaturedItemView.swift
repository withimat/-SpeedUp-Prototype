//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 7.09.2024.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTIES
    let player:Player
    
    
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    FeaturedItemView(player: players[0])
}
