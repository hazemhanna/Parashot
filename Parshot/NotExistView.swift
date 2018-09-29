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

class NotExistView: BaseCell {
    override func setupViews() {
   
        
        addSubview(itemImage)
        itemImage.topAnchor.constraint(equalTo:topAnchor,constant : 30).isActive = true
        itemImage.centerXAnchor.constraint(equalTo:centerXAnchor ).isActive = true
        itemImage.widthAnchor.constraint(equalTo:widthAnchor, multiplier: 0.5).isActive = true
        itemImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        
        
           addSubview(itemName)
        itemName.centerXAnchor.constraint(equalTo: itemImage.centerXAnchor).isActive = true
        itemName.topAnchor.constraint(equalTo: itemImage.bottomAnchor,constant: 20).isActive = true
        

        
        
        
        
 
        
        
        
        
    }
    
    

    
    let itemImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "delivery (2)"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()

    let itemName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("هذا المنتج غير متوفر ", comment: "this is name")
        return NL
        
    }()

    
}


