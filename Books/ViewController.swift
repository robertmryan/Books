//
//  ViewController.swift
//  Books
//
//  Created by Robert Ryan on 8/2/18.
//  Copyright © 2018 Robert Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var inventory: [Product]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        retrieveData() { inventory in
            print(inventory ?? "Nothing retrieved")
        }
    }

}

// MARK: - Utility methods

private extension ViewController {
    
    func retrieveData(completion: @escaping ([Product]?) -> Void) {
        struct ResponseObject: Codable {
            let data: [Product]
        }
        
        DispatchQueue.global().async {
            let fileURL = Bundle.main.url(forResource: "database", withExtension: "json")!

            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase

            let responseObject = try! Data(contentsOf: fileURL)
            let inventory = try! decoder.decode(ResponseObject.self, from: responseObject).data

            DispatchQueue.main.async {
                completion(inventory)
            }
        }
    }
    
}
