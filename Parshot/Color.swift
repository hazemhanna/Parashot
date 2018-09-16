//
//  Color.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit
extension UIColor {
    static func rgb(_ red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static let backgroundColor = UIColor.rgb(21, green: 22, blue: 33)
    static let outlineStrokeColor = UIColor.rgb(234, green: 46, blue: 111)
    static let trackStrokeColor = UIColor.rgb(56, green: 25, blue: 49)
    static let pulsatingFillColor = UIColor.rgb(86, green: 30, blue: 63)
}
