//
//  ContentView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 6.09.2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    
    
    
    
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing:0) {
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top, (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.safeAreaInsets.top ?? 0)
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.1), radius: 5,x: 0,y: 5)
                    
                    ScrollView(.vertical,showsIndicators: false,content: {
                        VStack(spacing:0){
                            FeaturedTabView()
                                .padding(.vertical,20)
                                .padding(.horizontal,10)
                                .frame(height: 300)
                            CategoryGridView()
                            TitleView(title: "HELMETS")
                            
                        LazyVGrid(columns: gridLayout,spacing: 15, content: {
                            ForEach(products){ product in
                                ProductItemView(product: product)
                                    .onTapGesture {
                                        feedback.impactOccurred()
                                        
                                        withAnimation(.easeOut){
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                            }
                                        }
                                }
                                
                            })
                            .padding(15)
                            
                            TitleView(title: "BRANDS")
                            BrandGridView()
        
                            FooterView()
                                .padding(.horizontal)
                        }
                    })
                        
                    
                    
                    
                    
                    
                    
                }//:vstack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//:ZStack
        .ignoresSafeArea(.all , edges: .top)
    }
}


//MARK: - PREVIEW
#Preview {
    ContentView()
        .environmentObject(Shop())
}
