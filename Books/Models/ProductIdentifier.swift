//
//  ProductIdentifier.swift
//  Books
//
//  Created by Robert Ryan on 8/2/18.
//  Copyright © 2018 Robert Ryan. All rights reserved.
//

import Foundation

struct ProductIdentifier: Codable {
    let oid: String
    
    enum CodingKeys: String, CodingKey {
        case oid = "$oid"
    }
}
