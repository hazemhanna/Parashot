//
//  thirdMainFooter.swift
//  Parshot
//
//  Created by hazem on 9/5/18.
//  Copyright © 2018 hazem. All rights reserved.
//

//
//  MainFooter.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//
import UIKit
class FirstAddProductFooter: BaseCell {
    
    override func setupViews() {
        backgroundColor = UIColor.clear
   
        
        addSubview(saveBtn)
        saveBtn.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        saveBtn.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        saveBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.8).isActive = true
        saveBtn.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.6).isActive = true
        saveBtn.isUserInteractionEnabled = true
        ////////
        
   
        
    }
    
    
    let saveBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.rgb(48, green: 39, blue: 133)
        button.setTitle(NSLocalizedString(" حفظ", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 20
        return button
    }()
    
    @objc func asd2 (){
        
    }
    
    
    
  
}

