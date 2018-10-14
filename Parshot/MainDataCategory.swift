// To parse the JSON, add this file to your project and do:
//
//   let category = try? newJSONDecoder().decode(Category.self, from: jsonData)

import Foundation

struct DataCategory:   Decodable {
    let data: [Category]
}




