//
//  SecondSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit

class ProductCompanyView: BaseCell,FloatRatingViewDelegate {
    
    
    override func setupViews() {
        
        
        
        addSubview(fView)
        fView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        fView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        fView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        fView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        fView.addSubview(productCompany)
        productCompany.topAnchor.constraint(equalTo: fView.topAnchor, constant : 5 ).isActive = true
        productCompany.rightAnchor.constraint(equalTo: fView.rightAnchor, constant: -10).isActive = true
        
      

        fView.addSubview(productCompanyValue)
        productCompanyValue.topAnchor.constraint(equalTo: productCompany.bottomAnchor, constant : 10 ).isActive = true
        productCompanyValue.rightAnchor.constraint(equalTo: fView.rightAnchor, constant: -40).isActive = true
        
        
        
        fView.addSubview(storename)
        storename.topAnchor.constraint(equalTo: fView.topAnchor, constant : 5 ).isActive = true
        storename.leftAnchor.constraint(equalTo: fView.leftAnchor, constant: 40).isActive = true
        
        
        fView.addSubview(storenameValue)
        storenameValue.topAnchor.constraint(equalTo: storename.bottomAnchor, constant : 10 ).isActive = true
        storenameValue.leftAnchor.constraint(equalTo: fView.leftAnchor, constant: 20).isActive = true
        

        
  
        
    }
    
    
    
    
    ///////  first View
    
    let  fView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        return uv
    }()
    
    
    let productCompany  :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" اسم الشركة ", comment: "this is name")
        return NL
        
    }()

    
    let productCompanyValue   :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("هاواوي", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    let storename  :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("اسم المتجر ", comment: "this is name")
        return NL
        
    }()
    
    
    let storenameValue   :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("متجر الاحلام", comment: "this is name")
        return NL
        
    }()
    
    
 
 
  
}




