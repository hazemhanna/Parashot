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

class FirstMyOrderView: BaseCell,FloatRatingViewDelegate {
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        mainView.addSubview(itemImage)
        itemImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 10).isActive = true
        itemImage.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10 ).isActive = true
        itemImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.3).isActive = true
        itemImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6).isActive = true
        
        
        
        
        mainView.addSubview(floatRatingView)
        floatRatingView.topAnchor.constraint(equalTo: itemImage.bottomAnchor,constant:5).isActive = true
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
        
        
        
        
        
        
        
        
        mainView.addSubview(itemValuePrice)
        itemValuePrice.topAnchor.constraint(equalTo: floatRatingView.bottomAnchor,constant : 5).isActive = true
        itemValuePrice.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -20 ).isActive = true
        
        mainView.addSubview(itemPrice)
        itemPrice.topAnchor.constraint(equalTo: floatRatingView.bottomAnchor,constant : 5 ).isActive = true
        itemPrice.rightAnchor.constraint(equalTo: itemValuePrice.leftAnchor ,constant : -5).isActive = true
        
        
        
        
        
        mainView.addSubview(verticallLine)
        verticallLine.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        verticallLine.rightAnchor.constraint(equalTo: itemImage.leftAnchor,constant : -10 ).isActive = true
        verticallLine.widthAnchor.constraint(equalToConstant : 1 ).isActive = true
        verticallLine.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        /////// head line
        
        mainView.addSubview(itemName)
        itemName.topAnchor.constraint(equalTo: topAnchor, constant : 10 ).isActive = true
        itemName.rightAnchor.constraint(equalTo: verticallLine.leftAnchor, constant: -10).isActive = true
        itemName.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.6).isActive = true
        itemName.textAlignment = .right
        
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant : 10).isActive = true
        horizantalLine.rightAnchor.constraint(equalTo: verticallLine.leftAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.64 ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        
        
        
        
        /////////
        mainView.addSubview(StoreNameLabel)
        StoreNameLabel.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 5).isActive = true
        StoreNameLabel.rightAnchor.constraint(equalTo: verticallLine.leftAnchor,constant : -5 ).isActive = true
        
        mainView.addSubview(storeNameValue)
        storeNameValue.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 5).isActive = true
        storeNameValue.rightAnchor.constraint(equalTo: StoreNameLabel.leftAnchor ).isActive = true

        
        ////
        mainView.addSubview(captenNameLabel)
        captenNameLabel.topAnchor.constraint(equalTo: storeNameValue.bottomAnchor,constant : 5).isActive = true
        captenNameLabel.rightAnchor.constraint(equalTo: verticallLine.leftAnchor,constant : -5 ).isActive = true
        
        mainView.addSubview(captenNameValue)
        captenNameValue.topAnchor.constraint(equalTo: storeNameValue.bottomAnchor,constant : 5).isActive = true
        captenNameValue.rightAnchor.constraint(equalTo: captenNameLabel.leftAnchor ).isActive = true

     ///////////
        mainView.addSubview(orderStatuesLabel)
        orderStatuesLabel.topAnchor.constraint(equalTo: captenNameValue.bottomAnchor,constant : 5).isActive = true
        orderStatuesLabel.rightAnchor.constraint(equalTo: verticallLine.leftAnchor,constant : -5 ).isActive = true
     
        mainView.addSubview(orderStatuesValue)
        orderStatuesValue.topAnchor.constraint(equalTo: captenNameValue.bottomAnchor,constant : 5).isActive = true
        orderStatuesValue.rightAnchor.constraint(equalTo: orderStatuesLabel.leftAnchor ).isActive = true
        
        
        
        
        
        mainView.addSubview(orderDateLabel)
        orderDateLabel.topAnchor.constraint(equalTo: orderStatuesLabel.bottomAnchor,constant : 5).isActive = true
        orderDateLabel.rightAnchor.constraint(equalTo: verticallLine.leftAnchor,constant : -5 ).isActive = true
        
        mainView.addSubview(orderDateValue)
        orderDateValue.topAnchor.constraint(equalTo: orderStatuesLabel.bottomAnchor,constant : 5).isActive = true
        orderDateValue.rightAnchor.constraint(equalTo: orderDateLabel.leftAnchor ).isActive = true
        
        
        
        
        
        mainView.addSubview(orderBtn)
        orderBtn.topAnchor.constraint(equalTo: orderDateLabel.bottomAnchor,constant : 5 ).isActive = true
        orderBtn.rightAnchor.constraint(equalTo: verticallLine.rightAnchor,constant : -40 ).isActive = true
        orderBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.35).isActive = true
        orderBtn.heightAnchor.constraint(equalToConstant : 20).isActive = true
        
 
    
     
        
        
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
        let ci = CustomImageView(image:#imageLiteral(resourceName: "3292016114244AM_635_samsung_galaxy_j7_2016"))
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
    
    
    
    
    
    
    
    let  priceOFOneLabe :UILabel = {
        let NL = UILabel()
        NL.textColor =  UIColor.rgb(235, green: 69, blue: 105)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("(ثمن القطعة الوحدة ١٩٩)", comment: "this is name")
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
    
 
    let  horizantalLine  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 0.5
        return uv
    }()
    
    
    let StoreNameLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("اسم المتجر :  ", comment: "this is name")
        return NL
        
    }()
    
    
    let storeNameValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("متجر الاحلام ", comment: "this is name")
        return NL
        
    }()
    
    
    
    let captenNameLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("اسم الكابتن  :  ", comment: "this is name")
        return NL
        
    }()
    
    
    let captenNameValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" حازم حنا  ", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    let  orderStatuesLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" حالة الطلب :  ", comment: "this is name")
        return NL
        
    }()
    
    
    let orderStatuesValue:UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" مكتمل  ", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    
    let orderDateLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" تاريخ الطلب :  ", comment: "this is name")
        return NL
        
    }()
    
    
    let orderDateValue :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" ١٢ /٤/٢٠١٧ ", comment: "this is name")
        return NL
        
    }()
    
    
    
    
    let orderBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor =  UIColor.rgb(235, green: 69, blue: 105)
        button.setTitle(NSLocalizedString("  طب مرة اخري ", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd (){
        
    }
    
    
    
    
}


