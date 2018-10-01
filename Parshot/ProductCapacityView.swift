//
//  SecondSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit

class ProductCapacityView : BaseCell,FloatRatingViewDelegate {
    
    
    override func setupViews() {
        
        
        backgroundColor = UIColor.white

        
        addSubview(fView)
        fView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        fView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        fView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.9).isActive = true
        fView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.4).isActive = true
        
        
 
        //////////// price value
        fView.addSubview(itemcapacity)
        itemcapacity.centerYAnchor.constraint(equalTo: fView.centerYAnchor).isActive = true
        itemcapacity.centerXAnchor.constraint(equalTo: fView.centerXAnchor).isActive = true
        ////// price word
        fView.addSubview(itemcapacityValue)
        itemcapacityValue.centerYAnchor.constraint(equalTo: fView.centerYAnchor).isActive = true
        itemcapacityValue.leftAnchor.constraint(equalTo: itemcapacity.rightAnchor ,constant : 3).isActive = true

       
        
    }

    ///////  first View
    
    let  fView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
   
    let itemcapacity :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("جيجابايت", comment: "this is name")
        return NL
        
    }()
    
    
    let itemcapacityValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("16", comment: "this is name")
        return NL
        
    }()

    
   
}




