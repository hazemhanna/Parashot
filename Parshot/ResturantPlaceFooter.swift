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

class ResturantPlaceFooter: BaseCell {
    
    
    override func setupViews() {
        

        addSubview(fView)
        fView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        fView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        fView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        fView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        
        fView.addSubview(addToCartBtn)
        addToCartBtn.centerYAnchor.constraint(equalTo: fView.centerYAnchor).isActive = true
        addToCartBtn.centerXAnchor.constraint(equalTo: fView.centerXAnchor).isActive = true
        
        
        fView.addSubview(cardImage)
        cardImage.centerYAnchor.constraint(equalTo: fView.centerYAnchor).isActive = true
        cardImage.leftAnchor.constraint(equalTo: addToCartBtn.rightAnchor,constant : 5).isActive = true
        cardImage.widthAnchor.constraint(equalTo: fView.widthAnchor,multiplier : 0.05).isActive = true
        cardImage.heightAnchor.constraint(equalTo : cardImage.widthAnchor).isActive = true
        
        
        
    }
    
      //////  first View
        let  fView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(63, green: 2, blue: 47)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.cornerRadius = 5
        uv.layer.shadowColor = UIColor.black.cgColor
        uv.layer.shadowOffset = CGSize(width: -2, height: 3)
        uv.layer.shadowOpacity = 0.2
        uv.layer.shadowRadius = 20
        uv.layer.masksToBounds = false
        uv.clipsToBounds = false
        return uv
    }()
    
    
    let  addToCartBtn : UILabel = {
        let button = UILabel()
        button.textColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.text = NSLocalizedString("اطلب الان", comment: "this is name")
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        button.font  = font!
        return button
    }()
    
    
    
    
    let cardImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "asd"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
}





