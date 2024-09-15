//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 15.09.2024.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    @State private var isAnimated: Bool = false
    @State private var counter : Int = 0
    var body: some View {
        HStack(alignment: .center , spacing: 6) {
            Button(action: {
                if (counter > 0){
                    feedback.impactOccurred()
                    counter -= 1
                }
                
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                feedback.impactOccurred()
                counter += 1
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
                isAnimated.toggle()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(isAnimated ? .red : .black)
            })
            
        }
        .font(.system(.title , design: .rounded ))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavouriteDetailView()
        .padding()
}
