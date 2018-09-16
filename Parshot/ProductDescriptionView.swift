//
//  SecondSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//

//
//  FirstSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit

class ProductDescriptionView: BaseCell,FloatRatingViewDelegate {
    
    
    override func setupViews() {
        
        
        
        addSubview(fView)
        fView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        fView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        fView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        fView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        fView.addSubview(descriptoonLabel)
        descriptoonLabel.topAnchor.constraint(equalTo: fView.topAnchor, constant : 5 ).isActive = true
        descriptoonLabel.rightAnchor.constraint(equalTo: fView.rightAnchor).isActive = true
        //descriptoonLabel.widthAnchor.constraint(equalTo: fView.widthAnchor,multiplier : 0.6).isActive = true
        
        
        addSubview(lineView)
        lineView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lineView.topAnchor.constraint(equalTo: descriptoonLabel.bottomAnchor,constant : 5).isActive = true
        lineView.widthAnchor.constraint(equalTo: fView.widthAnchor).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        fView.addSubview(productDescriotion)
        productDescriotion.topAnchor.constraint(equalTo: descriptoonLabel.bottomAnchor , constant : 10 ).isActive = true
        productDescriotion.rightAnchor.constraint(equalTo: fView.rightAnchor, constant: -10).isActive = true
        productDescriotion.widthAnchor.constraint(equalTo: fView.widthAnchor,multiplier : 0.6).isActive = true
        
        
        
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
    
    
    let descriptoonLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" الوصف ", comment: "this is name")
        return NL
        
    }()
    
    
    let productDescriotion :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.numberOfLines = 2 
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("  يحتور ع هاتف خلوي لا يمكن لا احد ان ياخدة منك الا بما يدفع لك البضانات ", comment: "this is name")
        return NL
        
    }()
    let  lineView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
}




