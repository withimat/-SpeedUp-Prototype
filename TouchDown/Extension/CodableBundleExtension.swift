//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 7.09.2024.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T {
        //:1 Locate the JSON file
        
        guard let url = self.url(forResource: file, withExtension: nil)else{
            fatalError("Failed to locate \(file) in bundle.//hata 1")
        }
        
        //:2 Create a property for the data
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.//hata 2")
        }
        
        //:3 create a decoder
        let decoder = JSONDecoder()
        
        
        
        //:4 create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self,from: data) else {
            fatalError("Failed to decode \(file) from bundle.//hata 3")
        }
        
        //:5 return the ready-to-use data
        
        return decodedData
        
    }
}
