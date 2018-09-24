//
//  DepartmentView.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit


class StoreDepartmentView : BaseCell {
    
    
    override func setupViews() {
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
   
    
        
        mainView.addSubview(StoreDepartmentLabel)
        StoreDepartmentLabel.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 10).isActive = true
        StoreDepartmentLabel.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -20).isActive = true
        
        
        
        
        
        mainView.addSubview(StoreDepartmentValueLabel)
        StoreDepartmentValueLabel.centerYAnchor.constraint(equalTo: StoreDepartmentLabel.centerYAnchor).isActive = true
        StoreDepartmentValueLabel.rightAnchor.constraint(equalTo: StoreDepartmentLabel.leftAnchor,constant : -10).isActive = true
        
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: StoreDepartmentLabel.bottomAnchor ,constant : 10).isActive = true
        horizantalLine.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: mainView.widthAnchor ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        //////////////
  
        mainView.addSubview(changeBtn)
        changeBtn.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 10).isActive = true
        changeBtn.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        changeBtn.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.5).isActive = true
        changeBtn.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
    
    
    }
    
    let  mainView :UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.white
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        ci.layer.borderWidth = 1
        return ci
        
    }()
    
    let StoreDepartmentLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" قسم المتجر :  ", comment: "this is name")
        return NL
        
    }()
    
    
    let  horizantalLine  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    
   
    
    
    
    let StoreDepartmentValueLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" قسم المتجر ", comment: "this is name")
        return NL
        
    }()
    


let changeBtn : UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.backgroundColor = UIColor.rgb(235, green: 69, blue: 105)
    button.setTitle(NSLocalizedString(" تفيير قسم المتجر", comment: "this is name"),for: .normal)
    button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
    var font = UIFont(name: "JFFlat-Regular", size: 14)
    button.titleLabel?.font  = font!
    button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
    button.layer.cornerRadius = 15
    return button
}()

@objc func asd2 (){
    
}




}
