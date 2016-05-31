// To use ObjectMapper, a class or struct must implement these:
//
//     public protocol Mappable {
//       init?(_ map: Map)
//       mutating func mapping(map: Map)
//       static func objectForMapping(map: Map) -> Mappable? // Optional
//     }
//
// ObjectMapper uses the `<-` operator to define how each 
// member variable is mappable to JSON and from JSON.

import Foundation
import ObjectMapper

class Item: Mappable {

  var name: String?

  // Implement Mappable
  required init?(_ map: Map) {
  }
  
  // Implement Mappable
  func mapping(map: Map) {
    name <- map["name"]
  }

}

