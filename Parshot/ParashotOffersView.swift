//
//  SecondSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit

class ParashotOffersView: BaseCell,FloatRatingViewDelegate {
   
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        mainView.addSubview(itemImage)
        itemImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 20).isActive = true
        itemImage.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -30 ).isActive = true
        itemImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.15).isActive = true
        itemImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6).isActive = true
        

        mainView.addSubview(descoundImage)
        descoundImage.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        descoundImage.rightAnchor.constraint(equalTo: mainView.rightAnchor).isActive = true
        descoundImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.3).isActive = true
        descoundImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
        
        
        mainView.addSubview(floatRatingView)
        floatRatingView.topAnchor.constraint(equalTo: itemImage.bottomAnchor,constant:10).isActive = true
        floatRatingView.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant:-20).isActive = true
        floatRatingView.heightAnchor.constraint(equalToConstant: 15).isActive = true
        floatRatingView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        floatRatingView.editable = false
        floatRatingView.delegate = self
        floatRatingView.contentMode = UIViewContentMode.scaleAspectFit
        floatRatingView.type = .halfRatings
        floatRatingView.fullImage = UIImage(named:"star98")
        floatRatingView.emptyImage = UIImage(named:"emptystar")
        floatRatingView.rating = 5.0
        
        
        
        
        mainView.addSubview(itemRateNum)
        itemRateNum.centerYAnchor.constraint(equalTo: floatRatingView.centerYAnchor).isActive = true
        itemRateNum.rightAnchor.constraint(equalTo: floatRatingView.leftAnchor,constant: -5).isActive = true
        
        
        
        mainView.addSubview(verticallLine)
        verticallLine.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        verticallLine.rightAnchor.constraint(equalTo: itemImage.leftAnchor,constant : -40 ).isActive = true
        verticallLine.widthAnchor.constraint(equalToConstant : 1 ).isActive = true
        verticallLine.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        /////// head line
        
        mainView.addSubview(itemName)
        itemName.topAnchor.constraint(equalTo: topAnchor, constant : 10 ).isActive = true
        itemName.rightAnchor.constraint(equalTo: verticallLine.leftAnchor, constant: -10).isActive = true
        itemName.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.6).isActive = true
        itemName.textAlignment = .right
        
        
    
        
        mainView.addSubview(descoundLabe)
        descoundLabe.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant : 10 ).isActive = true
        descoundLabe.rightAnchor.constraint(equalTo: verticallLine.leftAnchor ,constant : -60).isActive = true
        
        
        
        
        mainView.addSubview(itemChargeBtn)
        itemChargeBtn.topAnchor.constraint(equalTo: descoundLabe.bottomAnchor,constant : 15 ).isActive = true
        itemChargeBtn.rightAnchor.constraint(equalTo: verticallLine.leftAnchor ,constant : -60).isActive = true
        itemChargeBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.29).isActive = true
        itemChargeBtn.heightAnchor.constraint(equalToConstant : 20).isActive = true
        
        

        
        
        
        
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: itemChargeBtn.bottomAnchor,constant : 15).isActive = true
        horizantalLine.rightAnchor.constraint(equalTo: verticallLine.leftAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.64 ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        ///////
        
        
        
        mainView.addSubview(itemValueOldPrice)
        itemValueOldPrice.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 10).isActive = true
        itemValueOldPrice.rightAnchor.constraint(equalTo: verticallLine.rightAnchor,constant : -20 ).isActive = true
        
        mainView.addSubview(itemOldPrice)
        itemOldPrice.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 10 ).isActive = true
        itemOldPrice.rightAnchor.constraint(equalTo: itemValueOldPrice.leftAnchor ,constant : -5).isActive = true
        
        
        
        mainView.addSubview(oldPriceLine)
        oldPriceLine.centerYAnchor.constraint(equalTo: itemValueOldPrice.centerYAnchor).isActive = true
        oldPriceLine.rightAnchor.constraint(equalTo: verticallLine.rightAnchor,constant : -20 ).isActive = true
        oldPriceLine.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.2 ).isActive = true
        oldPriceLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        
   
        mainView.addSubview(itemNewPrice)
        itemNewPrice.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 10 ).isActive = true
        itemNewPrice.leftAnchor.constraint(equalTo: leftAnchor ,constant : 20).isActive = true
        
        mainView.addSubview(itemValueNewPrice)
        itemValueNewPrice.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 10).isActive = true
        itemValueNewPrice.leftAnchor.constraint(equalTo: itemNewPrice.rightAnchor,constant : 5 ).isActive = true
        
       
        
  
        
        
    }
    
    
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        return uv
    }()
    
    
    
    let itemImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41356482_234556987221009_3617552121928351744_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    let descoundImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "42785600_336081806966580_8279103380677197824_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    let  descoundValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("20 %", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    let floatRatingView: FloatRatingView  = {
        let departnames = FloatRatingView()
        departnames.translatesAutoresizingMaskIntoConstraints = false
        return departnames
    }()
    
    
    
    
    let itemRateNum :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.lightGray
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("(230)", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    
    
    
    let  descoundLabe :UILabel = {
        let NL = UILabel()
        NL.textColor =  UIColor.rgb(235, green: 69, blue: 105)
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" خصم ٢٠ ٪ ع هذا المنتج", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    let  verticallLine :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    
    
    let itemName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" هاتف سامسونج جالكسي جي 7 كور باللون الذهبي الجذاب. يدعم هاتف  ", comment: "this is name")
        return NL
        
    }()
    
   
    
    
    let itemChargeBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.rgb(247, green: 200, blue: 5)
        button.setTitle(NSLocalizedString("شحن مجاني  ", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.black, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd (){
        
    }
    let  horizantalLine  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    
    
    
    let itemNewPrice :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("ريال", comment: "this is name")
        return NL
        
    }()
    
    
    let itemValueNewPrice :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("236.50254", comment: "this is name")
        return NL
        
    }()
    
    let itemOldPrice :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("ريال", comment: "this is name")
        return NL
        
    }()
    
    let itemValueOldPrice :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("236.50254", comment: "this is name")
        return NL
        
    }()
    let  oldPriceLine  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.black
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
}


