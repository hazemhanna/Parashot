//
//  BodyViewModel.swift
//  Parshot
//
//  Created by MAC on 10/15/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import UIKit

struct BodyViewModel {

    var backgroundValue: UIColor

    var first_label: String?
    var second_label: String?
    var third_label: String?
    var template_id: String?
    var categorybackground: UIColor
    var fontcolor: UILabel?




    init(body:BodyModel) {
        self.backgroundValue = UIColor.rgb(CGFloat(body.red), green: CGFloat(body.green), blue: CGFloat(body.blue))
        self.categorybackground = UIColor.rgb(CGFloat(body.category_red), green: CGFloat(body.category_green), blue: CGFloat(body.category_blue))
        self.fontcolor?.textColor = UIColor.rgb(CGFloat(body.font_red), green: CGFloat(body.font_green), blue: CGFloat(body.font_blue))

        self.first_label = body.first_label
        self.second_label = body.second_label
        self.third_label = body.third_label





        

    }

}
