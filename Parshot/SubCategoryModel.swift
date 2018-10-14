//
//  SubCategryFirstMainPage.swift
//  Parshot
//
//  Created by hossam ahmed on 10/13/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
struct Subcat: Codable {
    let id: Int?
    let name: String?
    let categoryID: Int?
    let photo, icon: String?
    let created, modified: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case categoryID = "category_id"
        case photo, icon, created, modified
    }
}
