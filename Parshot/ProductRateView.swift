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

class ProductRateView: BaseCell,FloatRatingViewDelegate {
    override func setupViews() {
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        mainView.addSubview(itemImage)
        itemImage.topAnchor.constraint(equalTo: mainView.topAnchor,constant : 30).isActive = true
        itemImage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor ).isActive = true
        itemImage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.3).isActive = true
        itemImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
        
        
        mainView.addSubview(itemName)
        itemName.centerXAnchor.constraint(equalTo: itemImage.centerXAnchor).isActive = true
        itemName.topAnchor.constraint(equalTo: itemImage.bottomAnchor,constant: 20).isActive = true
        
        
        
        mainView.addSubview(orderNumberLabel)
        orderNumberLabel.rightAnchor.constraint(equalTo: itemImage.rightAnchor).isActive = true
        orderNumberLabel.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant: 30).isActive = true
        
        
        mainView.addSubview(orderNumberValueLabel)
        orderNumberValueLabel.rightAnchor.constraint(equalTo: orderNumberLabel.leftAnchor,constant : -5 ).isActive = true
        orderNumberValueLabel.topAnchor.constraint(equalTo: itemName.bottomAnchor,constant: 30).isActive = true
       
        
        
        mainView.addSubview(rateLabel)
        rateLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        rateLabel.topAnchor.constraint(equalTo: orderNumberLabel.bottomAnchor,constant: 40).isActive = true
        
      
        
        
        mainView.addSubview(floatRatingView)
        floatRatingView.topAnchor.constraint(equalTo: rateLabel.bottomAnchor,constant:20).isActive = true
        floatRatingView.centerXAnchor.constraint(equalTo: rateLabel.centerXAnchor).isActive = true
        floatRatingView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        floatRatingView.widthAnchor.constraint(equalToConstant: 140).isActive = true
        floatRatingView.editable = true
        floatRatingView.delegate = self
        floatRatingView.contentMode = UIViewContentMode.scaleAspectFit
        floatRatingView.type = .halfRatings
        floatRatingView.fullImage = UIImage(named:"star98")
        floatRatingView.emptyImage = UIImage(named:"emptystar")
       // floatRatingView.rating = 5.0
        
     
        
        mainView.addSubview(CommentTF)
        CommentTF.topAnchor.constraint(equalTo: floatRatingView.bottomAnchor,constant : 20).isActive = true
        CommentTF.centerXAnchor.constraint(equalTo: floatRatingView.centerXAnchor ).isActive = true
        CommentTF.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.8).isActive = true
        CommentTF.heightAnchor.constraint(equalToConstant : 40 ).isActive = true
        CommentTF.textAlignment =  .center
        
        
    
        
        mainView.addSubview(horizantalLine)
        horizantalLine.topAnchor.constraint(equalTo: CommentTF.bottomAnchor).isActive = true
        horizantalLine.centerXAnchor.constraint(equalTo: CommentTF.centerXAnchor ).isActive = true
        horizantalLine.widthAnchor.constraint(equalTo:CommentTF.widthAnchor ).isActive = true
        horizantalLine.heightAnchor.constraint(equalToConstant :1).isActive = true
        ///////
        
        
        
        
        
        
      
        
    
        
        
        
    }
    
    
    
    let  mainView :UIView = {
        let uv = UIView()
        uv.backgroundColor = .clear
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
    
    let rateLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" الي اي مدي انت راضي ", comment: "this is name")
        return NL
        
    }()

    
    
    let itemName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" هاتف سامسونج جالكسي جي 7     ", comment: "this is name")
        return NL
        
    }()
    
    let orderNumberLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" طلب رقم : ", comment: "this is name")
        return NL
        
    }()
    
    
    
    let orderNumberValueLabel :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.numberOfLines = 2
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" ٢٤٠", comment: "this is name")
        return NL
        
    }()
    
 
    let  horizantalLine  :UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.black
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    
    
    
    
    

    
    let CommentTF :UITextField = {
        let tf = UITextField()
        tf.textColor = UIColor.rgb(48, green: 39, blue: 133)
        tf.attributedPlaceholder = NSAttributedString(string:NSLocalizedString("اكتب تعليقك", comment: "this is name"),
                                                      
                                                      attributes:[NSForegroundColorAttributeName: UIColor.rgb(48, green: 39, blue: 133)])
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        tf.font = font
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor.clear
        return tf
        
    }()
    
    
    
}


