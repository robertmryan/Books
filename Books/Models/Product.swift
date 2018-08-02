//
//  Book.swift
//  Books
//
//  Created by Robert Ryan on 8/2/18.
//  Copyright © 2018 Robert Ryan. All rights reserved.
//

import Foundation

struct Product: Codable {
    let id: ProductIdentifier
    let productName: String
    let supplier: String
    let quantity: Int
    let unitCost: String
    let productDescription: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case productName, supplier, quantity, unitCost, productDescription
    }
}
