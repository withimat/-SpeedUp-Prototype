//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 6.09.2024.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    //MARK: - BODY
    var body: some View {
        HStack{
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
                
            })//:BUTTON
            
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0,y: isAnimated ? 0 : -25)
                .onAppear(){
                    withAnimation(.easeOut(duration: 2)) {
                        isAnimated.toggle()
                    }
                }
            Spacer()
            Button(action: {
                
            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14,height: 14,alignment: .center)
                        .offset(x: 13,y: -10)
                        
                }
            })
        }//:HSTK
    }
}

#Preview {
    NavigationBarView()
}
