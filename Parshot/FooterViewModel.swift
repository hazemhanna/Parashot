//
//  FooterViewModel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/15/18.
//  Copyright © 2018 hazem. All rights reserved.
//

//
//  FooterViewModel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/15/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import UIKit

struct FooterViewModel {
    
    var border: String?
    var shadow: String?
    var background: UIColor?
    var first_icon: String?
    var first_label: String?
    var second_icon: String?
    var second_label: String?
    var third_icon: String?
    var third_label: String?
    var forth_icon: String?
    var forth_label: String?
    var fifth_icon: String?
    var fifth_label: String?
    var template_id: Int?
    var font_color: String?
    var font_red: Int?
    var font_green: Int?
    var font_blue: Int?
    
    
    init(Footer  : FooterModel) {
        
        self.border = Footer.border
        self.shadow = Footer.shadow
        self.background = UIColor.rgb(CGFloat(Footer.red), green: CGFloat(Footer.green), blue: CGFloat(Footer.blue))
        var  url = "http://parashote.codesroots.com/library/default/\(Footer.first_icon)" as? String
        if let imageurl = url {
            print(imageurl)
            self.first_icon = imageurl
        }
        self.first_label = Footer.first_label
        var  url2 = "http://parashote.codesroots.com/library/default/\(Footer.second_icon)" as? String
        if let imageurl = url2 {
            self.second_icon = imageurl
        }
        self.second_label = Footer.second_label
        var  url3 = "http://parashote.codesroots.com/library/default/\(Footer.third_icon)" as? String
        if let imageurl = url3 {
            self.third_icon = imageurl
        }
        self.third_label = Footer.third_label
        var  url4 = "http://parashote.codesroots.com/library/default/\(Footer.forth_icon)" as? String
        if let imageurl = url4 {
            self.forth_icon = imageurl
        }
        self.forth_label = Footer.forth_label
        var  url5 = "http://parashote.codesroots.com/library/default/\(Footer.fifth_icon)" as? String
        
        if let imageurl = url5 {
            self.fifth_icon = imageurl
            print(imageurl)
        }
        self.fifth_label = Footer.fifth_label
        
        self.template_id = Footer.template_id
        self.font_color = Footer.font_color
        self.font_red = Footer.font_red
        self.font_green = Footer.font_green
        self.font_blue = Footer.font_blue
        
        
    }
    
}


