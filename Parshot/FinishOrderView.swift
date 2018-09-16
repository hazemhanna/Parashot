//
//  FirstSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit

class FinishOrderView: BaseCell {
    
    
    override func setupViews() {
        
        backgroundColor =  UIColor.rgb(252, green: 244, blue: 246)
        
      
        ////////
        
        addSubview(confirmImage)
        confirmImage.topAnchor.constraint(equalTo: topAnchor,constant : 70).isActive = true
        confirmImage.centerXAnchor.constraint(equalTo: centerXAnchor ).isActive = true
        confirmImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.4).isActive = true
        confirmImage.heightAnchor.constraint(equalTo : confirmImage.widthAnchor).isActive = true
        
        addSubview(moveBtn)
        moveBtn.topAnchor.constraint(equalTo: confirmImage.bottomAnchor,constant : 20).isActive = true
        moveBtn.centerXAnchor.constraint(equalTo:  centerXAnchor).isActive = true
        moveBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.6).isActive = true
        moveBtn.heightAnchor.constraint(equalToConstant : 50).isActive = true
        
        addSubview(thanksLabe)
        thanksLabe.bottomAnchor.constraint(equalTo: confirmImage.topAnchor,constant : -20).isActive = true
        thanksLabe.centerXAnchor.constraint(equalTo:  centerXAnchor).isActive = true
       
        
    }
    
 
    
    let  confirmImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41708218_615128462216587_2313515895273553920_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.cornerRadius = 10
        return ci
        
    }()
    
    

    
    let  moveBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.clear
        button.setTitle(NSLocalizedString(" الانتقال الي متابعة المندوب", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        button.titleLabel?.font  = font!
        button.layer.cornerRadius = 15
        button.layer.borderColor = UIColor.rgb(85, green: 22, blue: 122).cgColor
        button.layer.borderWidth = 1
        button.setTitleColor(UIColor.black, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd2 (){
        
        
        
    }
 
    
    
    let  thanksLabe :UILabel = {
        let NL = UILabel()
        NL.textColor =  UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" شكرا لك ... تمت العملية بنجاح ", comment: "this is name")
        return NL
        
    }()
    
}



