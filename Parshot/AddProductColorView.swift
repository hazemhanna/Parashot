//
//  SecondSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//

//
//  FirstSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit

class AddProductColorView: BaseCell {
    
    
    override func setupViews() {
        
        backgroundColor = UIColor.white
        addSubview(itemImage)
        itemImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        itemImage.centerXAnchor.constraint(equalTo:centerXAnchor ).isActive = true
        itemImage.widthAnchor.constraint(equalTo:  widthAnchor,multiplier : 0.9).isActive = true
        itemImage.heightAnchor.constraint(equalTo: itemImage.widthAnchor).isActive = true
        
        
        
        
    }
    
    let itemImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41606939_326637194555421_7581475111258030080_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
}




