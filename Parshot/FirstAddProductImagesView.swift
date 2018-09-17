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

class FirstAddProductImagesView: BaseCell,FloatRatingViewDelegate {
    
    
    override func setupViews() {
        

       addSubview(itemImage)
        itemImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        itemImage.centerXAnchor.constraint(equalTo: centerXAnchor ).isActive = true
        itemImage.widthAnchor.constraint(equalTo:  widthAnchor, multiplier: 0.3).isActive = true
        itemImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true

        
        
    }

     let itemImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41356482_234556987221009_3617552121928351744_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
  

}




