//
//  MyAcountHeader.swift
//  Parshot
//
//  Created by hazem on 9/17/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class MenuHeader : BaseCell {
    
    
    override func setupViews() {
   
        
 
        addSubview(iconImage)
        iconImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImage.centerXAnchor.constraint(equalTo: centerXAnchor  ).isActive = true
        iconImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6).isActive = true
        iconImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6).isActive = true
        
    }

    let  iconImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "42409333_569197833536424_7883733271505272832_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()

    
}
