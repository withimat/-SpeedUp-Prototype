//
//  LogoView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 6.09.2024.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing:4){
            Text("Speed".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30,alignment: .center)
            Text("UP".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
        }
    }
}

#Preview {
    LogoView()
}
