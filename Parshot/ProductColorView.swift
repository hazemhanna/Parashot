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

class ProductColorView: BaseCell {
    
    
    override func setupViews() {
        
        backgroundColor = UIColor.white

        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.9).isActive = true
        mainView.heightAnchor.constraint(equalTo:  mainView.widthAnchor).isActive = true
        /////
        mainView.addSubview(itemImage)
        itemImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        itemImage.centerXAnchor.constraint(equalTo:centerXAnchor ).isActive = true
        itemImage.widthAnchor.constraint(equalTo: mainView.widthAnchor).isActive = true
        itemImage.heightAnchor.constraint(equalTo: itemImage.widthAnchor).isActive = true
        

        
        
    }
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    let itemImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41606939_326637194555421_7581475111258030080_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    

}




