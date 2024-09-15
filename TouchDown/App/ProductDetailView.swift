//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 14.09.2024.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop : Shop
    
    
    var body: some View {
        VStack(alignment: .leading,spacing: 5 ,content: {
            //NAVBAR
            NavBarDetailView()
                .padding(.horizontal)
                .padding(.top, (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.safeAreaInsets.top ?? 0)
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
                
            // DETAIL BOTTOM PART
            VStack(alignment: .center,spacing: 0, content: {
                
                // RATINGS + SIZES
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom , 10)
                
                
                
                
                //DESCRIPTION
                ScrollView(.vertical,showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProducts.description)
                        .padding(.top)
                        .font(.system(.body , design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                }//:SCROLL
                
                
                // QUANTITY + FAVORUITE
                
                QuantityFavouriteDetailView()
                    .padding(.vertical ,10)
                    
                // ADD TO CART
                AddToCartDetailVeiw()
                    .padding(.bottom ,20)
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top,-100)
            )
            
            
            
            
            
           
        })
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ??
                sampleProducts.red,
                green: shop.selectedProduct?.green ??
                    sampleProducts.green,
                blue: shop.selectedProduct?.blue ??
                    sampleProducts.blue)
        ).ignoresSafeArea(.all , edges: .all)
            
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
