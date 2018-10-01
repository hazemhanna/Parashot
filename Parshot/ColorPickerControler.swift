//
//  ColorPickerControler.swift
//  Parshot
//
//  Created by hazem on 9/18/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit
import ChromaColorPicker

class ColoePickerController : UIViewController  {






    override func viewDidLoad() {
        
      view.backgroundColor = UIColor.rgb(88, green: 119, blue: 136)
        
        let neatColorPicker = ChromaColorPicker(frame: CGRect(x:view.frame.width/8, y: view.frame.height/3, width: 300, height: 300))
        neatColorPicker.padding = 5
        neatColorPicker.stroke = 3
        neatColorPicker.hexLabel.textColor = UIColor.white
        view.addSubview(neatColorPicker)
        
        
        
        view.addSubview(ProductColorLabel)
        ProductColorLabel.bottomAnchor.constraint(equalTo: neatColorPicker.topAnchor, constant:-20  ).isActive = true
        ProductColorLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    }
    
    
    
    
    let ProductColorLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" اختر لون المنتج ", comment: "this is name")
        return NL
    }()
    
 
    
}



