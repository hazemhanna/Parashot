//
//  FirstSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit

class ProductsView: BaseCell,FloatRatingViewDelegate {
    
    var controller : ProductsMainController?
    
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        mainView.addSubview(itemImage)
        itemImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 20).isActive = true
        itemImage.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -40 ).isActive = true
        itemImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.15).isActive = true
        itemImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6).isActive = true
        
        
        
        
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
        verticallLine.rightAnchor.constraint(equalTo: itemImage.leftAnchor,constant :-40 ).isActive = true
        verticallLine.widthAnchor.constraint(equalToConstant : 1 ).isActive = true
        verticallLine.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        /////// head line
        
        mainView.addSubview(itemName)
        itemName.topAnchor.constraint(equalTo: topAnchor, constant : 10 ).isActive = true
        itemName.rightAnchor.constraint(equalTo: verticallLine.leftAnchor, constant: -10).isActive = true
        itemName.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.6).isActive = true
        itemName.textAlignment = .right
        
        
        
        mainView.addSubview(itemValuePrice)
        itemValuePrice.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant : 30).isActive = true
        itemValuePrice.rightAnchor.constraint(equalTo: verticallLine.rightAnchor,constant : -20 ).isActive = true
        
        mainView.addSubview(itemPrice)
        itemPrice.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant : 30 ).isActive = true
        itemPrice.rightAnchor.constraint(equalTo: itemValuePrice.leftAnchor ,constant : -5).isActive = true
        
        mainView.addSubview(itemChargeBtn)
        itemChargeBtn.centerYAnchor.constraint(equalTo: itemPrice.centerYAnchor ).isActive = true
        itemChargeBtn.rightAnchor.constraint(equalTo: itemPrice.leftAnchor,constant : -15).isActive = true
        itemChargeBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.3).isActive = true
        itemChargeBtn.heightAnchor.constraint(equalToConstant : 20).isActive = true
        
        
        ////// cart icon
        
        mainView.addSubview(cartImage)
        cartImage.topAnchor.constraint(equalTo: itemValuePrice.bottomAnchor,constant : 10 ).isActive = true
        cartImage.rightAnchor.constraint(equalTo: verticallLine.leftAnchor,constant : -40).isActive = true
        cartImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.07).isActive = true
        cartImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.15).isActive = true
        //// eyes  image
        mainView.addSubview(eyesImage)
        eyesImage.topAnchor.constraint(equalTo: itemValuePrice.bottomAnchor,constant : 10 ).isActive = true
        eyesImage.rightAnchor.constraint(equalTo: cartImage.leftAnchor,constant : -10).isActive = true
        eyesImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.07).isActive = true
        eyesImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.15).isActive = true
        ///////
        mainView.addSubview(boxImage)
        boxImage.topAnchor.constraint(equalTo: itemValuePrice.bottomAnchor,constant : 10 ).isActive = true
        boxImage.rightAnchor.constraint(equalTo: eyesImage.leftAnchor,constant : -10).isActive = true
        boxImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.07).isActive = true
        boxImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.15).isActive = true
        /////
        mainView.addSubview(deleteImage)
        deleteImage.topAnchor.constraint(equalTo: itemValuePrice.bottomAnchor,constant : 10 ).isActive = true
        deleteImage.rightAnchor.constraint(equalTo: boxImage.leftAnchor,constant : -10).isActive = true
        deleteImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.07).isActive = true
        deleteImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.15).isActive = true
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: itemPrice.bottomAnchor,constant : 50).isActive = true
        horizantalLine.rightAnchor.constraint(equalTo: verticallLine.leftAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.64 ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        
        mainView.addSubview(productRemender)
        productRemender.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 10).isActive = true
        productRemender.rightAnchor.constraint(equalTo: verticallLine.leftAnchor,constant : -10 ).isActive = true
      
        mainView.addSubview(productSaless)
        productSaless.topAnchor.constraint(equalTo: productRemender.bottomAnchor,constant : 10).isActive = true
        productSaless.rightAnchor.constraint(equalTo: verticallLine.leftAnchor,constant : -10 ).isActive = true
        
        deleteImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ShowBlackView)))
        deleteImage.isUserInteractionEnabled = true
        
    }
    
    
    
    //// make
    func ShowBlackView(tapGestureRecognizer: UITapGestureRecognizer)
        
    {
        
        
        controller?.ShowBlackView()
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
    
    let deleteImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "42970779_477394782755364_283872264246525952_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    let boxImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "42933036_1918397918467726_2119935208072413184_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    let eyesImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "42903243_2013257508696418_871450814273552384_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    let cartImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "42899088_746599105684485_169666262052372480_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    let  horizantalLine  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    ////
    
    let productRemender :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("المنتجات المتبقية : 45 قطعة", comment: "this is name")
        return NL
        
    }()
    
    let productSaless :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("مبيعات المنتج : 30 قطعة ", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    

}




