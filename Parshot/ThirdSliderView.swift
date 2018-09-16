//
//  SliderView.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit

class ThirdSliderView : BaseCell {
    
    
    override func setupViews() {
        
         backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        addSubview(viewImage)
        viewImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        viewImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewImage.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        viewImage.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
 
        
    }
    

      let viewImage:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.rgb(63, green: 6, blue: 47)
        ci.layer.cornerRadius = 20
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.shadowColor = UIColor.black.cgColor
        ci.layer.shadowOffset = CGSize(width: -1, height: 2)
        ci.layer.shadowOpacity = 0.1
        ci.layer.shadowRadius = 10
        ci.layer.masksToBounds = false
        ci.clipsToBounds = false
        
        return ci
        
    }()
}
