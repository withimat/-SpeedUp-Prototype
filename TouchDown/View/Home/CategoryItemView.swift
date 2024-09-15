//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 9.09.2024.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - Property
    
    let category: Category
    //MARK: - BODY
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack(alignment:.center,spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30,height: 30,alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray,lineWidth: 1))
            
            
        })
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
