//
//  TypeView.swift
//  Parshot
//
//  Created by hazem on 9/4/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit
class TypeView: BaseCell {
    
    override func setupViews() {
        
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        mainView.addSubview(itemlImage)
        itemlImage.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        itemlImage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        itemlImage.widthAnchor.constraint(equalTo: mainView.widthAnchor).isActive = true
        itemlImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.8).isActive = true
        
        mainView.addSubview(nameLabe)
        nameLabe.topAnchor.constraint(equalTo: itemlImage.bottomAnchor).isActive = true
        nameLabe.centerXAnchor.constraint(equalTo:mainView.centerXAnchor).isActive = true
        nameLabe.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier: 0.8).isActive = true
        nameLabe.textAlignment = .center
        
    }
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.white
        //uv.layer.cornerRadius = 7
        uv.translatesAutoresizingMaskIntoConstraints = false
        
        return uv
    }()
    
    let itemlImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "classic-sale-composition-with-fun-style_23-2147700227"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    let nameLabe :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.rgb(99, green: 27, blue: 103)
        
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("phrmacy", comment: "this is name")
        
        return NL
        
    }()
}
