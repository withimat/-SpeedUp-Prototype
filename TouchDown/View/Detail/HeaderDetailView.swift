//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 14.09.2024.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        VStack(alignment : .leading , spacing : 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ??
                sampleProducts.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        }
        .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
