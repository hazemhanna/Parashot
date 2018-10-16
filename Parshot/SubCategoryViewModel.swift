//
//  SubCategoryViewModel.swift
//  Parshot
//
//  Created by MAC on 10/14/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import Foundation
import UIKit

struct SubCategoryViewModel {
    
    var id: Int?
    var name: String?
    var categoryID: Int?
    var photo, icon: String?
    var created, modified: String?
    
    init(SubCat: Subcat) {

        self.id = SubCat.id
        self.name = SubCat.name
        self.modified = SubCat.modified
        self.created = SubCat.created
        self.photo = SubCat.photo
        self.icon = SubCat.icon

        var  url = "http://parashote.codesroots.com/library/default/\(SubCat.photo!)" as? String
        if let imageurl = url {
            self.photo = imageurl
        }
    }

}


