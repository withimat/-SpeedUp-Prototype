//
//  NavBarDetailView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 14.09.2024.
//

import SwiftUI

struct NavBarDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack{
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
                    
            })
            
            Spacer()
            
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
                    
            })
            
            
            
        }
    }
}

#Preview {
    NavBarDetailView()
        .environmentObject(Shop())
        .padding()
        .background(.gray)
}
