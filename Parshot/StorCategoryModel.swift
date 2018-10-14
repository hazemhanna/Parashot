//
//  StorCategoryModel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/13/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit
import Foundation

struct StoreCategoryModel   :  Decodable {
    
    
    let name: String
    let id : Int
    let subcats : [categoryModel]
    
    
}
