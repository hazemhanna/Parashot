//
//  MyAcountHeader.swift
//  Parshot
//
//  Created by hazem on 9/17/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class DellerHeader : FirstSubCategryHeaders {
    
    
    override func setupViews() {
        super.setupViews()
        // this gon't work
        mainView.isHidden = true
        buyBtn.isHidden = true
        cartValueLabe.isHidden = true
        itemValueLabe.isHidden = true
        cartImage.isHidden = true
        
        
        addSubview(backView)
        backView.bottomAnchor.constraint(equalTo: bottomAnchor,constant : -20 ).isActive = true
        backView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        backView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9).isActive = true
        backView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
        
        
        backView.addSubview(codelLabe)
        codelLabe.centerYAnchor.constraint(equalTo: backView.centerYAnchor).isActive = true
        codelLabe.rightAnchor.constraint(equalTo: backView.rightAnchor,constant : -20 ).isActive = true
        
        
        
        backView.addSubview(codeValuelLabe)
        codeValuelLabe.rightAnchor.constraint(equalTo: codelLabe.leftAnchor,constant : -4).isActive = true
        codeValuelLabe.centerYAnchor.constraint(equalTo: backView.centerYAnchor  ).isActive = true
        
        
        backView.addSubview(iconImage)
        iconImage.leftAnchor.constraint(equalTo: backView.leftAnchor,constant : 20).isActive = true
        iconImage.centerYAnchor.constraint(equalTo: backView.centerYAnchor  ).isActive = true
        iconImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.06).isActive = true
        iconImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true

    }
    
    
    
    let  backView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        uv.layer.cornerRadius = 7
        
        return uv
    }()
    
    
    let codelLabe :UILabel = {
        let NL = UILabel()
        NL.textColor =  UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" الكود الخاص بالمشاهير", comment: "this is name")
        return NL
        
    }()
    
    
    let  codeValuelLabe :UILabel = {
        let NL = UILabel()
        NL.textColor =  UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("4kjfffffd", comment: "this is name")
        return NL
        
    }()
  
    
    let  iconImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "copy"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    
    
}
