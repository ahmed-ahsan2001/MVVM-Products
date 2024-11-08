//
//  Product.swift
//  MVVM Products
//
//  Created by Muhammad Ahmed on 08/11/2024.
//

import Foundation


struct Product: Decodable{
    let id: Int
    let title: String
    let price: Float
    let description: String
    let category: String
    let image: String
    let rating: Rate
}

struct Rate: Decodable{
    let rate: Float
    let count: Int
}
