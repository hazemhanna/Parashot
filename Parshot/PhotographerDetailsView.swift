//
//  MyAcountHeader.swift
//  Parshot
//
//  Created by hazem on 9/17/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class PhotographerDetailsView : BaseCell  {
    
    
    override func setupViews() {
   

        
       addSubview(PhotographerImage)
        PhotographerImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        PhotographerImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        PhotographerImage.widthAnchor.constraint(equalTo:  widthAnchor,multiplier : 0.95).isActive = true
        PhotographerImage.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        
        
        
        
    }
    
 
    
    
    let PhotographerImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "42361305_1046658315458707_4944712783217295360_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()

}
