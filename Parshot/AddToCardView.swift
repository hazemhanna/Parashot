//
//  SecondSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit

class AddToCardView: BaseCell,FloatRatingViewDelegate {
    
    
    override func setupViews() {
        
        
        
        
        
        
        addSubview(fView)
        fView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        fView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        fView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        fView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        
               fView.addSubview(addToCartBtn)
                addToCartBtn.centerYAnchor.constraint(equalTo: fView.centerYAnchor).isActive = true
                addToCartBtn.centerXAnchor.constraint(equalTo: fView.centerXAnchor).isActive = true
                addToCartBtn.widthAnchor.constraint(equalTo:  fView.widthAnchor,multiplier : 0.5).isActive = true
                addToCartBtn.heightAnchor.constraint(equalTo : fView.heightAnchor,multiplier : 0.5 ).isActive = true
        
        
                addToCartBtn.addSubview(cardImage)
                cardImage.centerYAnchor.constraint(equalTo: addToCartBtn.centerYAnchor).isActive = true
                cardImage.rightAnchor.constraint(equalTo: addToCartBtn.rightAnchor,constant : -30).isActive = true
                cardImage.widthAnchor.constraint(equalTo: addToCartBtn.widthAnchor,multiplier : 0.1).isActive = true
                cardImage.heightAnchor.constraint(equalTo : cardImage.widthAnchor).isActive = true
        
        
        
    }
    
    
    
    
    ///////  first View
    
    let  fView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    let  addToCartBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.rgb(235, green: 69, blue: 105)
        button.setTitle(NSLocalizedString("اضف للسلة", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd2 (){
        
        
    }
    
    
    let cardImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "asd"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
}




