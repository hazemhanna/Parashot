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

class FristProductCartView: BaseCell,FloatRatingViewDelegate {
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        mainView.addSubview(itemImage)
        itemImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 20).isActive = true
        itemImage.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -10 ).isActive = true
        itemImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.3).isActive = true
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
        verticallLine.rightAnchor.constraint(equalTo: itemImage.leftAnchor,constant : -10 ).isActive = true
        verticallLine.widthAnchor.constraint(equalToConstant : 1 ).isActive = true
        verticallLine.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        /////// head line
        
        mainView.addSubview(itemName)
        itemName.topAnchor.constraint(equalTo: topAnchor, constant : 10 ).isActive = true
        itemName.rightAnchor.constraint(equalTo: verticallLine.leftAnchor, constant: -10).isActive = true
        itemName.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.6).isActive = true
        itemName.textAlignment = .right
        
        
        
        mainView.addSubview(itemValuePrice)
        itemValuePrice.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant : 10).isActive = true
        itemValuePrice.rightAnchor.constraint(equalTo: verticallLine.rightAnchor,constant : -20 ).isActive = true
        
        mainView.addSubview(itemPrice)
        itemPrice.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant : 10 ).isActive = true
        itemPrice.rightAnchor.constraint(equalTo: itemValuePrice.leftAnchor ,constant : -5).isActive = true
        
        mainView.addSubview(priceOFOneLabe)
        priceOFOneLabe.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant : 10 ).isActive = true
        priceOFOneLabe.rightAnchor.constraint(equalTo: itemPrice.leftAnchor ,constant : -5).isActive = true
        
        
        
        
        mainView.addSubview(itemChargeBtn)
        itemChargeBtn.topAnchor.constraint(equalTo: itemPrice.bottomAnchor,constant : 15 ).isActive = true
        itemChargeBtn.rightAnchor.constraint(equalTo: verticallLine.leftAnchor,constant : -5).isActive = true
        itemChargeBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.29).isActive = true
        itemChargeBtn.heightAnchor.constraint(equalToConstant : 20).isActive = true
        
        
        
        
        
        
        mainView.addSubview(deleteBtn)
        deleteBtn.centerYAnchor.constraint(equalTo: itemChargeBtn.centerYAnchor).isActive = true
        deleteBtn.rightAnchor.constraint(equalTo: itemChargeBtn.leftAnchor,constant : -10).isActive = true
        deleteBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.29).isActive = true
        deleteBtn.heightAnchor.constraint(equalToConstant : 20).isActive = true
        
        
        
        
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: itemChargeBtn.bottomAnchor,constant : 15).isActive = true
        horizantalLine.rightAnchor.constraint(equalTo: verticallLine.leftAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.64 ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant : 1).isActive = true
        ///////
        
        
     
        
        
    
        
        mainView.addSubview(productNumText)
        productNumText.topAnchor.constraint(equalTo: horizantalLine.bottomAnchor,constant : 15).isActive = true
        productNumText.centerXAnchor.constraint(equalTo: horizantalLine.centerXAnchor ).isActive = true
        productNumText.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.2).isActive = true
        productNumText.heightAnchor.constraint(equalToConstant : 20 ).isActive = true
        productNumText.layer.cornerRadius = 10
        productNumText.textAlignment =  .center
        
        
        
        mainView.addSubview(plusImage)
        plusImage.centerYAnchor.constraint(equalTo: productNumText.centerYAnchor).isActive = true
        plusImage.leftAnchor.constraint(equalTo: productNumText.rightAnchor,constant : 20 ).isActive = true
        plusImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.05).isActive = true
        plusImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1).isActive = true
        
        
        mainView.addSubview(minusImage)
        minusImage.centerYAnchor.constraint(equalTo: productNumText.centerYAnchor).isActive = true
        minusImage.rightAnchor.constraint(equalTo: productNumText.leftAnchor,constant : -20 ).isActive = true
        minusImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.06).isActive = true
        minusImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.02).isActive = true
    
    
    
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
    
    
    let  deleteBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.rgb(190, green: 11, blue: 33)
        button.setTitle(NSLocalizedString(" حذف", comment: "this is name"),for: .normal)
        button.addTarget(self, action: #selector(asd2), for: .touchUpInside)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        button.titleLabel?.font  = font!
        button.setTitleColor(UIColor.white, for: UIControlState.normal)  ///// how to give it black color and font
        button.layer.cornerRadius = 10
        return button
    }()
    
    @objc func asd2 (){
        
        
    }
 
    
   


    let plusImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41477360_2141969506064867_3351731055471099904_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    let minusImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41487154_1919917048317715_5515241769073115136_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    let productNumText :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString("2", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        tf.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        tf.layer.borderWidth = 1
        tf.backgroundColor = UIColor.white
        return tf
        
    }()
    


}


