//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 14.09.2024.
//

import SwiftUI

struct TopPartDetailView: View {
    @EnvironmentObject var shop:Shop
    @State private var isAnimating : Bool = false
    var body: some View {
        HStack(alignment: .center,spacing: 6, content: {
            // PRICE
            VStack(alignment: .leading,spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                    
                Text(shop.selectedProduct?.formattedPrice ??
                    sampleProducts.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35 , anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            
            Image(shop.selectedProduct?.image ??
                sampleProducts.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        })
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.75)){
                isAnimating.toggle()
            }
            
        })
    }
}

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
}
