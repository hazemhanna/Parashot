//
//  SliderView.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit
class SliderView : BaseCell {
    
    var data:SliderViewModel?{
        
        didSet{
            if data?.Image != nil {
            ItemImage.image = data!.Image!.image
            }
        }
    }
    override func setupViews() {
        
        addSubview(ItemImage)
        ItemImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        ItemImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        ItemImage.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        ItemImage.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
   
    
    
        ItemImage.addSubview(shopeButn)
        shopeButn.bottomAnchor.constraint(equalTo: ItemImage.bottomAnchor,constant : -50).isActive = true
        shopeButn.leftAnchor.constraint(equalTo: ItemImage.leftAnchor, constant : 30).isActive = true
        shopeButn.widthAnchor.constraint(equalTo: ItemImage.widthAnchor,multiplier : 0.3).isActive = true
        shopeButn.heightAnchor.constraint(equalTo: ItemImage.heightAnchor,multiplier : 0.15).isActive = true
        
        
        
        
    
    }
    
    
    lazy var ItemImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "Shopclues-Diwali-Flea-Market (1)"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    

    let shopeButn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.black
        button.setTitle(NSLocalizedString("shope now ", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(handlePrev), for: .touchUpInside)
        button.setTitleColor(UIColor.white , for: UIControlState.normal)  ///// how to give it black color and font
        //button.layer.cornerRadius = 3
        
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        button.titleLabel?.font = font!
        return button
        
    }()
    @objc  func handlePrev() {
    
    
    }
    
    /////// Functions

}
