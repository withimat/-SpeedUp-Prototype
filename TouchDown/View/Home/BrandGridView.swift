//
//  BrandGridView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 14.09.2024.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content: {
            LazyHGrid(rows: gridLayout, content: {
                
                ForEach(brands){ brand in
                    BrandItemView(brand: brand)
                    
                }
            })
            .frame(height: 200)
            .padding(15)
            
        })
            
        
    }
}

#Preview {
    BrandGridView()
}
