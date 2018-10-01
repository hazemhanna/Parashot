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

class SecondSubCategryView: BaseCell,FloatRatingViewDelegate {
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        mainView.addSubview(itemImage)
        itemImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 20).isActive = true
        itemImage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        itemImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.35).isActive = true
        itemImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
        
        
        
        
        mainView.addSubview(floatRatingView)
        floatRatingView.topAnchor.constraint(equalTo: itemImage.bottomAnchor,constant:10).isActive = true
        floatRatingView.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant:-25).isActive = true
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
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: floatRatingView.bottomAnchor,constant : 10).isActive = true
        horizantalLine.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
  
        
       
        mainView.addSubview(itemName)
        itemName.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor, constant : 10 ).isActive = true
        itemName.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -10).isActive = true
        itemName.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.8).isActive = true
        itemName.textAlignment = .center
        
        
        ////////////
        mainView.addSubview(itemValuePrice)
        itemValuePrice.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant : 20).isActive = true
        itemValuePrice.rightAnchor.constraint(equalTo: rightAnchor,constant : -5 ).isActive = true
        
        mainView.addSubview(itemPrice)
        itemPrice.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant : 20 ).isActive = true
        itemPrice.rightAnchor.constraint(equalTo: itemValuePrice.leftAnchor ,constant : -5).isActive = true
        
        
        mainView.addSubview(itemChargeBtn)
        itemChargeBtn.centerYAnchor.constraint(equalTo: itemPrice.centerYAnchor ).isActive = true
        itemChargeBtn.rightAnchor.constraint(equalTo: itemPrice.leftAnchor,constant : -10).isActive = true
        itemChargeBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.4).isActive = true
        itemChargeBtn.heightAnchor.constraint(equalToConstant : 20).isActive = true
        
       
        
        
        mainView.addSubview(addToCartBtn)
        addToCartBtn.topAnchor.constraint(equalTo: itemChargeBtn.bottomAnchor,constant : 10).isActive = true
        addToCartBtn.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        addToCartBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.7).isActive = true
        addToCartBtn.heightAnchor.constraint(equalToConstant : 25).isActive = true
        
        
        addToCartBtn.addSubview(cardImage)
        cardImage.centerYAnchor.constraint(equalTo: addToCartBtn.centerYAnchor).isActive = true
        cardImage.rightAnchor.constraint(equalTo: addToCartBtn.rightAnchor,constant : -20).isActive = true
        cardImage.widthAnchor.constraint(equalTo: addToCartBtn.widthAnchor,multiplier : 0.15).isActive = true
        cardImage.heightAnchor.constraint(equalTo : cardImage.widthAnchor).isActive = true
        
        
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
    
    let itemPrice :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("ريال", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    
    let itemValuePrice :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("236.50254", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    let itemChargeBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.rgb(247, green: 200, blue: 5)
        button.setTitle(NSLocalizedString("شحن مجاني  ", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
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
    
    
    let  addToCartBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.rgb(235, green: 69, blue: 105)
        button.setTitle(NSLocalizedString("اضف للسلة", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
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




