//
//  FooterModel.swift
//  Parshot
//
//  Created by hazem on 9/23/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit

class FooterModel: NSObject {
    

    var id: NSNumber?
    var border: Bool?
    var shadow: Bool?
    
    var background: String?
    var red: NSNumber?
    var green: NSNumber?
    var blue: NSNumber?
    
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
    
    var template_id: NSNumber?
    
    var font_color: String?
    var font_red: NSNumber?
    var font_green: NSNumber?
    var font_blue: NSNumber?

    
    init(dictionary: [String: Any]?) {
        
        self.id = dictionary?["id"] as? NSNumber
        self.border = dictionary?["border"] as? Bool
        self.shadow = dictionary?["shadow"] as? Bool
        
        self.background = dictionary?["background"] as? String
        self.red = dictionary?["red"] as? NSNumber
        self.green = dictionary?["green"] as? NSNumber
        self.blue = dictionary?["blue"] as? NSNumber

        self.first_icon = dictionary?["first_icon"] as? String
        self.first_label = dictionary?["first_label"] as? String
        
        self.second_icon = dictionary?["second_icon"] as? String
        self.second_label = dictionary?["second_label"] as? String
    
        self.third_icon = dictionary?["third_icon"] as? String
        self.third_label = dictionary?["third_label"] as? String

        self.fifth_icon = dictionary?["fifth_icon"] as? String
        self.fifth_label = dictionary?["fifth_label"] as? String
        
        self.template_id = dictionary?["template_id"] as? NSNumber

        self.font_color = dictionary?["font_color"] as? String
        self.font_red = dictionary?["font_red"] as? NSNumber
        self.font_green = dictionary?["font_green"] as? NSNumber
        self.font_blue = dictionary?["font_blue"] as? NSNumber

    }
}
