//
//  RatingSizesDetailView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 15.09.2024.
//

import SwiftUI

struct RatingSizesDetailView: View {
    let sizes : [String] = ["XS" , "S" , "M" , "L" , "XL"]
    var body: some View {
        HStack(alignment: .top,spacing: 3, content: {
            
            //RATINGS
            VStack(alignment: .leading,spacing: 3, content: {
                Text("RATINGS")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorgray)
                
                HStack(alignment: .center,spacing: 3, content: {
                    ForEach(1...5 , id: \.self){item in
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28,height: 28,alignment: .center)
                                .foregroundColor(.white)
                                .background(colorgray.cornerRadius(5))
                        })
                    }
                    
                    
                })
                
            })
            
            
            Spacer()
            
            //SIZES
            VStack(alignment: .trailing,spacing: 3, content: {
                Text("SIZES")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorgray)
                
                HStack(alignment: .center,spacing: 5, content: {
                    ForEach(sizes , id: \.self) {size in
                        Button(action: {
                            
                        }, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorgray)
                                .frame(width: 28,height: 28,alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(
                                    colorgray, lineWidth: 4)
                                )
                        })
                    }
                })
                
            })
            
            
            
        })//:HSTACK
    }
}

#Preview {
    RatingSizesDetailView()
}
