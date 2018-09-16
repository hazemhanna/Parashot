//
//  BestRateView.swift
//  Parshot
//
//  Created by hazem on 9/4/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit
class BestRateView: BaseCell {
    
    override func setupViews() {
        
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        mainView.addSubview(itemImage)
        itemImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 2).isActive = true
        itemImage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        itemImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.8).isActive = true
        itemImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.6).isActive = true
        
        
        mainView.addSubview(typenameLabe)
        typenameLabe.topAnchor.constraint(equalTo: itemImage.bottomAnchor).isActive = true
        typenameLabe.rightAnchor.constraint(equalTo:mainView.rightAnchor,constant : -2).isActive = true
       // typenameLabe.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier: 0.9).isActive = true
        
        
        
        
        mainView.addSubview(nameLabe)
        nameLabe.topAnchor.constraint(equalTo: typenameLabe.bottomAnchor).isActive = true
        nameLabe.centerXAnchor.constraint(equalTo:mainView.centerXAnchor).isActive = true
        nameLabe.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier: 0.9).isActive = true
        nameLabe.textAlignment = .center
        
    }
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.white
        uv.layer.cornerRadius = 7
        uv.translatesAutoresizingMaskIntoConstraints = false
        
        return uv
    }()
    
    let itemImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "e0zk"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    let typenameLabe :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.rgb(99, green: 27, blue: 103)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("pharmacy", comment: "this is name")
        
        return NL
        
    }()


    let nameLabe :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("hardee's - prima vista ", comment: "this is name")
        
        return NL
        
    }()



}


