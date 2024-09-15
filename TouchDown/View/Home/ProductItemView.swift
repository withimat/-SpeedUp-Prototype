//
//  ProductItemView,.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 9.09.2024.
//

import SwiftUI

struct ProductItemView: View {
    let product : Product
    var body: some View {
        VStack(alignment:.leading,spacing:6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                
            
            
        }
        
    }
}

#Preview {
    ProductItemView(product: products[2])
        .padding()
}
