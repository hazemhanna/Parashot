//
//  OurDoctorCell.swift
//  Chalihats
//
//  Created by hazem on 7/17/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit

class SecondMenuView: BaseCell {
    
    
    override func setupViews() {
        
        addSubview(backView)
        backView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        backView.centerXAnchor.constraint(equalTo:centerXAnchor).isActive = true
        backView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        backView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        backView.addSubview(IconImage)
        IconImage.rightAnchor.constraint(equalTo: backView.rightAnchor, constant: -10).isActive = true
        IconImage.centerYAnchor.constraint(equalTo: backView.centerYAnchor).isActive = true
        IconImage.widthAnchor.constraint(equalTo: backView.widthAnchor, multiplier : 0.07).isActive = true
        IconImage.heightAnchor.constraint(equalTo: IconImage.widthAnchor).isActive = true
        
        
        backView.addSubview(lineView)
        lineView.centerXAnchor.constraint(equalTo: backView.centerXAnchor).isActive = true
        lineView.bottomAnchor.constraint(equalTo: backView.bottomAnchor).isActive = true
        lineView.widthAnchor.constraint(equalTo: backView.widthAnchor, multiplier : 0.9).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 1 ).isActive = true
    
        
        /////////////
        backView.addSubview(nameLabe)
        nameLabe.rightAnchor.constraint(equalTo: IconImage.leftAnchor, constant: -5).isActive = true
        nameLabe.centerYAnchor.constraint(equalTo: IconImage.centerYAnchor).isActive = true
        /////////
        
    }
    
    let backView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
   //     uv.layer.cornerRadius = 3
        uv.translatesAutoresizingMaskIntoConstraints = false
        
        return uv
    }()
    let lineView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.black
        uv.layer.cornerRadius = 3
        uv.translatesAutoresizingMaskIntoConstraints = false
        
        return uv
    }()
    lazy var nameLabe :UILabel = {
        let NL = UILabel()
        NL.textColor = .black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("حسابي", comment: "this is name")
        
        return NL
        
    }()
    
    let  IconImage:UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "0"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
}
