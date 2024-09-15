//
//  FooterView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 6.09.2024.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment:.center,spacing: 10){
            Text("We Offer the most cutting edge, comfortable, lightweght and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
                
           Text("Copyright ® İmat Gökaslan\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }.padding(10)
    }
}

#Preview {
    FooterView()
}
