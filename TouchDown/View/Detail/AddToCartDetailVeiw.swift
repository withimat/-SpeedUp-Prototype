//
//  AddToCartDetailVeiw.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 15.09.2024.
//

import SwiftUI

struct AddToCartDetailVeiw: View {
    //MARK: - Property
    @EnvironmentObject var shop : Shop
    
    
    //MARK: - BODY
    var body: some View {
        HStack {
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Spacer()
                Text("ADD TO CART")
                    .font(.system(.title2 , design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
            })
            .padding(15)
            .background(
                Color(
                    red: shop.selectedProduct?.red ??
                        sampleProducts.red,
                    green: shop.selectedProduct?.green ??
                        sampleProducts.green,
                    blue: shop.selectedProduct?.blue ??
                        sampleProducts.blue)
            )
            .clipShape(Capsule())
        }
    }
}

#Preview {
    AddToCartDetailVeiw()
        .environmentObject(Shop())
        .padding()
}
