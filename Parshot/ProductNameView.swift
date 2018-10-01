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

class ProductNameView: BaseCell,FloatRatingViewDelegate {
    
  
    override func setupViews() {
        
   
        
        addSubview(fView)
        fView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        fView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        fView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        fView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true

        
        fView.addSubview(itemName)
        itemName.topAnchor.constraint(equalTo: fView.topAnchor, constant : 5 ).isActive = true
        itemName.rightAnchor.constraint(equalTo: fView.rightAnchor, constant: -10).isActive = true
        itemName.widthAnchor.constraint(equalTo: fView.widthAnchor,multiplier : 0.6).isActive = true
        
        fView.addSubview(floatRatingView)
        floatRatingView.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant:10).isActive = true
        floatRatingView.rightAnchor.constraint(equalTo: fView.rightAnchor,constant:-25).isActive = true
        floatRatingView.heightAnchor.constraint(equalToConstant: 15).isActive = true
        floatRatingView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        floatRatingView.editable = false
        floatRatingView.delegate = self
        floatRatingView.contentMode = UIViewContentMode.scaleAspectFit
        floatRatingView.type = .halfRatings
        floatRatingView.fullImage = UIImage(named:"star98")
        floatRatingView.emptyImage = UIImage(named:"emptystar")
        floatRatingView.rating = 5.0
        /////// rate value
        fView.addSubview(itemRateNum)
        itemRateNum.centerYAnchor.constraint(equalTo: floatRatingView.centerYAnchor).isActive = true
        itemRateNum.rightAnchor.constraint(equalTo: floatRatingView.leftAnchor,constant: -5).isActive = true
        //////////// price value
        fView.addSubview(itemPrice)
        itemPrice.topAnchor.constraint(equalTo: fView.topAnchor,constant : 5).isActive = true
        itemPrice.leftAnchor.constraint(equalTo: fView.leftAnchor,constant : 20 ).isActive = true
        ////// price word
        fView.addSubview(itemValuePrice)
        itemValuePrice.topAnchor.constraint(equalTo: fView.topAnchor,constant : 5).isActive = true
        itemValuePrice.leftAnchor.constraint(equalTo: itemPrice.rightAnchor ,constant : 5).isActive = true
        //////// charge btn
        fView.addSubview(itemChargeBtn)
        itemChargeBtn.topAnchor.constraint(equalTo: itemPrice.bottomAnchor,constant : 10 ).isActive = true
        itemChargeBtn.leftAnchor.constraint(equalTo: fView.leftAnchor,constant : 10).isActive = true
        itemChargeBtn.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.3).isActive = true
        itemChargeBtn.heightAnchor.constraint(equalToConstant : 20).isActive = true
        

        
        
        
    }
    
    
 
    
    ///////  first View
    
    let  fView :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.white
        uv.translatesAutoresizingMaskIntoConstraints = false
        uv.layer.borderColor = UIColor.rgb(230, green: 234, blue: 237).cgColor
        uv.layer.borderWidth = 1
        return uv
    }()
    
    
    let itemName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" هاتف سامسونج جالكسي جي 7 كور باللون   ", comment: "this is name")
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
    

    
    
}




