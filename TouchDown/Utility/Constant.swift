//
//  Constant.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 6.09.2024.
//

import Foundation
import SwiftUI

//DATA

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products : [Product] = Bundle.main.decode("product.json")
let brands : [Brand] = Bundle.main.decode("brand.json")
let sampleProducts: Product = products[0]

//COLOR

let colorBackground: Color = Color("ColorBackground")
let colorgray: Color = Color(UIColor.systemGray4)

//LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout : [GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}


//UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
//API
//IMAGE
//FONT
// StRING
//MISC
