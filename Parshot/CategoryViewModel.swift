//
//  CategoryViewModel.swift
//  Parshot
//
//  Created by MAC on 10/14/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import UIKit

struct CategoryViewModel {

    let id: Int?
    let name: String?
    let created: String?
    var photo: String?
    let modified: String?

    init(cateogry : Category) {

        self.id = cateogry.id
        self.name = cateogry.name
        self.modified = cateogry.modified
        self.created = cateogry.created

        var  url = "http://parashote.codesroots.com/library/default/\(cateogry.photo!)" as? String
        if let imageurl = url {
            self.photo = imageurl
        }

    }

}

