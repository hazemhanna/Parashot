//
//  PaymentView.swift
//  Parshot
//
//  Created by hazem on 9/29/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit

class PaymentView : BaseCell {
    
    
    override func setupViews() {
        
        
 
        addSubview(MadaImage)
        MadaImage.topAnchor.constraint(equalTo: topAnchor,constant  : 20 ).isActive = true
        MadaImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        MadaImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.45).isActive = true
        MadaImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.17).isActive = true
        
        
        
        
        addSubview(VisaImage)
        VisaImage.topAnchor.constraint(equalTo: MadaImage.bottomAnchor,constant  : 20 ).isActive = true
        VisaImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        VisaImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.45).isActive = true
        VisaImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.17).isActive = true

        
   
        
        addSubview(cashImage)
        cashImage.topAnchor.constraint(equalTo: VisaImage.bottomAnchor,constant  : 20).isActive = true
        cashImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        cashImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.45).isActive = true
        cashImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.17).isActive = true

        
    }
    
 

    let  MadaImage:UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "mada icon"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()




    let  VisaImage:UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "mastercard"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()

    
    
    let  cashImage:UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "cash"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    
    
}
