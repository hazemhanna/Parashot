//
//  FirstSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit

class HeadrWithoutCart: BaseCell {
    
    
    override func setupViews() {
        
        backgroundColor =  UIColor.rgb(252, green: 244, blue: 246)
        
      
        
        addSubview(blackimage)
        blackimage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        blackimage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        blackimage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9).isActive = true
        blackimage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.03).isActive = true
        
        
        addSubview(rightArrwImage)
        rightArrwImage.topAnchor.constraint(equalTo: blackimage.bottomAnchor,constant : 15).isActive = true
        rightArrwImage.rightAnchor.constraint(equalTo: rightAnchor ).isActive = true
        rightArrwImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.34).isActive = true
        rightArrwImage.heightAnchor.constraint(equalToConstant : 15).isActive = true
        
        addSubview(leftArrowImage)
        leftArrowImage.topAnchor.constraint(equalTo: blackimage.bottomAnchor,constant : 15).isActive = true
        leftArrowImage.leftAnchor.constraint(equalTo: leftAnchor ).isActive = true
        leftArrowImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.34).isActive = true
        leftArrowImage.heightAnchor.constraint(equalToConstant : 15).isActive = true
        
        addSubview(marketName)
        marketName.centerYAnchor.constraint(equalTo: rightArrwImage.centerYAnchor).isActive = true
        marketName.rightAnchor.constraint(equalTo: rightArrwImage.leftAnchor,constant : -20 ).isActive = true
        
        
        
        addSubview(blackImage2)
        blackImage2.topAnchor.constraint(equalTo: leftArrowImage.bottomAnchor,constant : 10 ).isActive = true
        blackImage2.centerXAnchor.constraint(equalTo: centerXAnchor ).isActive = true
        blackImage2.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9).isActive = true
        blackImage2.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.03).isActive = true
        
        
        
    }
    
    
    let rightArrwImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "hazem-1"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.cornerRadius = 10
        return ci
        
    }()
    let leftArrowImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "Composed-layer@1X (2)@3x٢"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.cornerRadius = 10
        return ci
        
    }()
    
    
    
    
    
    
    var  marketName :UILabel = {
        let NL = UILabel()
        NL.textColor =  UIColor.rgb(63, green: 6, blue: 47)
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" متجر الاحلام", comment: "this is name")
        return NL
        
    }()

    let blackimage : CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "Rectangle 4@1.5X-1"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.cornerRadius = 10
        return ci
        
    }()
    
    
    let blackImage2:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "Rectangle 4@1.5X-1"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.cornerRadius = 10
        return ci
        
    }()
    
    
}



