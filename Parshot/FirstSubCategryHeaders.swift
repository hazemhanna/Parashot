//
//  FirstSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit

class FirstSubCategryHeaders: BaseCell {
    
    
    
    
    
    
    override func setupViews() {
        
        backgroundColor =  UIColor.rgb(252, green: 244, blue: 246)
        
      
        
        addSubview(blackimage)
        blackimage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        blackimage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        blackimage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9).isActive = true
        blackimage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.03).isActive = true
        
        
        addSubview(rightArrwImage)
        rightArrwImage.topAnchor.constraint(equalTo: blackimage.bottomAnchor,constant : 15).isActive = true
        rightArrwImage.rightAnchor.constraint(equalTo: rightAnchor ).isActive = true
        rightArrwImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.34).isActive = true
        rightArrwImage.heightAnchor.constraint(equalToConstant : 15).isActive = true
        
        addSubview(leftArrowImage)
        leftArrowImage.topAnchor.constraint(equalTo: blackimage.bottomAnchor,constant : 15).isActive = true
        leftArrowImage.leftAnchor.constraint(equalTo: leftAnchor ).isActive = true
        leftArrowImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.34).isActive = true
        leftArrowImage.heightAnchor.constraint(equalToConstant : 15).isActive = true
    
        addSubview(marketName)
        marketName.centerYAnchor.constraint(equalTo: rightArrwImage.centerYAnchor).isActive = true
        marketName.rightAnchor.constraint(equalTo: rightArrwImage.leftAnchor,constant : -20 ).isActive = true
        

        ////////
       
        
        addSubview(blackImage2)
        blackImage2.topAnchor.constraint(equalTo: leftArrowImage.bottomAnchor,constant : 15 ).isActive = true
        blackImage2.centerXAnchor.constraint(equalTo: centerXAnchor ).isActive = true
        blackImage2.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9).isActive = true
        blackImage2.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.03).isActive = true
        
        
        addSubview(mainView)
        mainView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.95).isActive = true
        mainView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        mainView.addSubview(cartImage)
        cartImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 5).isActive = true
        cartImage.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -5 ).isActive = true
        cartImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.1).isActive = true
        cartImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
     
        
        mainView.addSubview(itemValueLabe)
        itemValueLabe.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        itemValueLabe.rightAnchor.constraint(equalTo: cartImage.leftAnchor,constant : -10 ).isActive = true
        
        
        
        addSubview(cartValueLabe)
         cartValueLabe.rightAnchor.constraint(equalTo: cartImage.rightAnchor,constant : -4).isActive = true
         cartValueLabe.topAnchor.constraint(equalTo: cartImage.topAnchor,constant : 1).isActive = true
        
        mainView.addSubview(buyBtn)
        buyBtn.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        buyBtn.leftAnchor.constraint(equalTo: mainView.leftAnchor,constant : 20 ).isActive = true
        buyBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.2).isActive = true
        buyBtn.heightAnchor.constraint(equalToConstant : 20).isActive = true
        
        
        
        
        
        
    }
    
    
    let rightArrwImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "hazem-1"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.cornerRadius = 10
        return ci
        
    }()
    let leftArrowImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "Composed-layer@1X (2)@3x٢"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.cornerRadius = 10
        return ci
        
    }()
 
    
    
    
    
    
    var  marketName :UILabel = {
        let NL = UILabel()
        NL.textColor =  UIColor.rgb(63, green: 6, blue: 47)
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" متجر الاحلام", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 2
        return uv
    }()
    
    
    let cartImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "40779120_226322154902703_6857912631009738752_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.cornerRadius = 10
        return ci
        
    }()
    
    
    let blackimage : CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "Rectangle 4@1.5X-1"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.cornerRadius = 10
        return ci
        
    }()
    
    
    let blackImage2:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "Rectangle 4@1.5X-1"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.cornerRadius = 10
        return ci
        
    }()
    

 
    
    let  itemValueLabe :UILabel = {
        let NL = UILabel()
        NL.textColor =  UIColor.rgb(235, green: 69, blue: 105)
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("لديك الان ٣ منتجات بالسلة", comment: "this is name")
        return NL
        
    }()

    
    let  cartValueLabe :UILabel = {
        let NL = UILabel()
        NL.textColor =  UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" ٣", comment: "this is name")
        return NL
        
    }()
    
    
    let  buyBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.rgb(235, green: 69, blue: 105)
        button.setTitle(NSLocalizedString(" شراء", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd2 (){
        
        
        
    }

}



