//
//  MyAcountHeader.swift
//  Parshot
//
//  Created by hazem on 9/17/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class MyAccoutHeader : FirstSubCategryHeaders {


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
            backView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7).isActive = true
            backView.heightAnchor.constraint(equalToConstant: 40).isActive = true
            
           
            backView.addSubview(totalLabe)
            totalLabe.centerYAnchor.constraint(equalTo: backView.centerYAnchor).isActive = true
            totalLabe.rightAnchor.constraint(equalTo: backView.rightAnchor,constant : -40 ).isActive = true
            
            
            
            backView.addSubview(totaValuelLabe)
            totaValuelLabe.rightAnchor.constraint(equalTo: totalLabe.leftAnchor,constant : -4).isActive = true
            totaValuelLabe.centerYAnchor.constraint(equalTo: backView.centerYAnchor  ).isActive = true
            
            
            
       
    
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
    
    
    let  totalLabe :UILabel = {
        let NL = UILabel()
        NL.textColor =  UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("اجمالي الرصيد : ", comment: "this is name")
        return NL
        
    }()

    
    let  totaValuelLabe :UILabel = {
        let NL = UILabel()
        NL.textColor =  UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" ٢٣٠ ريال سعودي", comment: "this is name")
        return NL
        
    }()

}
