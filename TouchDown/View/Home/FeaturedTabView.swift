//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 7.09.2024.
//

import SwiftUI

struct FeaturedTabView: View {
    @State private var isAnimated: Bool = false
    @State private var selectedTab = 0
    var tabCount: Int {
        players.count
    }
    
    // 5 saniyede bir tetiklenecek timer
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(players.indices, id: \.self) { index in
                FeaturedItemView(player: players[index])
                    .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .onReceive(timer) { _ in
            // Son sekmeye geldiğinde başa dönmesini sağlar
            if selectedTab < tabCount - 1 {
                
                selectedTab += 1
            } else {
                selectedTab = 0
            }
        }
        .onAppear(){
            withAnimation(.smooth(duration: 2)) {
                isAnimated.toggle()
            }
        }
    }
}

#Preview {
    FeaturedTabView()
}
