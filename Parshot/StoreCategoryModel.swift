//
//  StorCategoryModel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/13/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit
import Foundation

struct Category: Decodable {
    let id: Int?
    let name: String?
    let created: String?
    let photo: String?
    let modified: String?
    let subcats: [Subcat]?
}

