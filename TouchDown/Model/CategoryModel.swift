//
//  CategoryModel.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 9.09.2024.
//

import Foundation
import SwiftUI

struct Category : Codable,Identifiable{
    let id: Int
    let name:String
    let image:String
}
