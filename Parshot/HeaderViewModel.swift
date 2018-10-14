//
//  HeaderViewModel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/13/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import UIKit

struct HeaderViewModel {
    
    var background: String
    var red: Int?
    var green: Int?
    var blue: Int?
//    var right_icon: String?
//    var left_icon: String?
//    var template_id: Int?
    
    init(header : HeaderModel) {

        self.background = header.background
        self.red = header.red
        self.green = header.green
        self.blue = header.blue
    }
 
}
