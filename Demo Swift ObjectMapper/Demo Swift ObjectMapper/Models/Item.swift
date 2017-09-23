//
//  Item.swift
//  Demo Swift ObjectMapper
//
//  Created by Joel on 9/23/17.
//  Copyright © 2017 JoelParkerHenderson.com. All rights reserved.
//

import Foundation
import ObjectMapper

class Item: Mappable {
    
    var name: String?
    
    // Implement Mappable
    required init?(map: Map) {
    }
    
    // Implement Mappable
    func mapping(map: Map) {
        name <- map["name"]
    }
    
}
