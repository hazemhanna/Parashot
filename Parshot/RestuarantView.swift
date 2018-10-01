//
//  RestuarantView.swift
//  Parshot
//
//  Created by hazem on 9/9/18.
//  Copyright © 2018 hazem. All rights reserved.
//


import UIKit

class RestuarantView : BaseCell,FloatRatingViewDelegate {
    
    
    override func setupViews() {
        
        backgroundColor = UIColor.rgb(252, green: 244, blue: 246)
       
        
        
        
        addSubview(rightArrowImage)
        rightArrowImage.rightAnchor.constraint(equalTo: rightAnchor,constant : 3).isActive = true
        rightArrowImage.centerYAnchor.constraint(equalTo:centerYAnchor).isActive = true
        rightArrowImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.08).isActive = true
        rightArrowImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.35).isActive = true
        
        
        
        
        addSubview(leftArrowImage)
        leftArrowImage.leftAnchor.constraint(equalTo: leftAnchor,constant : -3).isActive = true
        leftArrowImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        leftArrowImage.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.08).isActive = true
        leftArrowImage.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.35).isActive = true
        
        addSubview(mainView)
        mainView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: widthAnchor,multiplier : 0.9).isActive = true
        mainView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        mainView.addSubview(resturanrName)
        resturanrName.topAnchor.constraint(equalTo: topAnchor,constant : 5).isActive = true
        resturanrName.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        mainView.addSubview(resturantImage)
        resturantImage.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        resturantImage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        resturantImage.widthAnchor.constraint(equalTo: mainView.widthAnchor).isActive = true
        resturantImage.heightAnchor.constraint(equalTo: mainView.heightAnchor,multiplier : 0.6).isActive = true
        /////// logoImage Back ground 
        resturantImage.addSubview(logoImageBack)
        logoImageBack.topAnchor.constraint(equalTo: resturantImage.topAnchor,constant : -15).isActive = true
        logoImageBack.rightAnchor.constraint(equalTo: resturantImage.rightAnchor,constant : -10).isActive = true
        logoImageBack.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.25).isActive = true
        logoImageBack.heightAnchor.constraint(equalTo: mainView.heightAnchor,multiplier : 0.6).isActive = true
        
        
        
       logoImageBack.addSubview(logoImage)
        logoImage.centerYAnchor.constraint(equalTo: logoImageBack.centerYAnchor).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: logoImageBack.centerXAnchor).isActive = true
        logoImage.widthAnchor.constraint(equalTo: logoImageBack.widthAnchor).isActive = true
        logoImage.heightAnchor.constraint(equalTo: logoImageBack.heightAnchor).isActive = true
        
        
        
        ////////////
        mainView.addSubview(lcationName)
        lcationName.topAnchor.constraint(equalTo: resturantImage.bottomAnchor,constant : 5).isActive = true
        lcationName.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant : -5).isActive = true
        ///////
        mainView.addSubview(locationImage)
        locationImage.topAnchor.constraint(equalTo: resturantImage.bottomAnchor,constant : 5).isActive = true
        locationImage.rightAnchor.constraint(equalTo: lcationName.leftAnchor,constant : -2).isActive = true
        locationImage.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.04).isActive = true
        locationImage.heightAnchor.constraint(equalTo:locationImage.widthAnchor ).isActive = true
        
        
        mainView.addSubview(verticalLine3)
        verticalLine3.topAnchor.constraint(equalTo: resturantImage.bottomAnchor ).isActive = true
        verticalLine3.rightAnchor.constraint(equalTo: locationImage.leftAnchor,constant : -10).isActive = true
        verticalLine3.widthAnchor.constraint(equalToConstant : 1).isActive = true
        verticalLine3.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.2 ).isActive = true
        ///// rate
        mainView.addSubview(floatRatingView)
        floatRatingView.topAnchor.constraint(equalTo: resturantImage.bottomAnchor,constant:5).isActive = true
        floatRatingView.rightAnchor.constraint(equalTo: verticalLine3.rightAnchor,constant:-5).isActive = true
        floatRatingView.heightAnchor.constraint(equalToConstant: 15).isActive = true
        floatRatingView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        floatRatingView.editable = false
        floatRatingView.delegate = self
        floatRatingView.contentMode = UIViewContentMode.scaleAspectFit
        floatRatingView.type = .halfRatings
        floatRatingView.fullImage = UIImage(named:"star98")
        floatRatingView.emptyImage = UIImage(named:"emptystar")
        floatRatingView.rating = 4.0
        
        
        
        
        
        
        
        
        //////////
        mainView.addSubview(likeImage)
        likeImage.topAnchor.constraint(equalTo: resturantImage.bottomAnchor,constant : 5).isActive = true
        likeImage.leftAnchor.constraint(equalTo: mainView.leftAnchor,constant : 10).isActive = true
        likeImage.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.04).isActive = true
        likeImage.heightAnchor.constraint(equalTo:likeImage.widthAnchor ).isActive = true
        
        
        mainView.addSubview(likeNumber)
        likeNumber.topAnchor.constraint(equalTo: resturantImage.bottomAnchor,constant : 5).isActive = true
        likeNumber.leftAnchor.constraint(equalTo: likeImage.rightAnchor,constant : 3).isActive = true
        
        
        mainView.addSubview(verticalLine)
        verticalLine.topAnchor.constraint(equalTo: resturantImage.bottomAnchor ).isActive = true
        verticalLine.leftAnchor.constraint(equalTo: likeNumber.rightAnchor,constant : 10).isActive = true
        verticalLine.widthAnchor.constraint(equalToConstant : 1).isActive = true
        verticalLine.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.2 ).isActive = true
        
        
        
        mainView.addSubview(commentImage)
        commentImage.topAnchor.constraint(equalTo: resturantImage.bottomAnchor,constant : 5 ).isActive = true
        commentImage.leftAnchor.constraint(equalTo: verticalLine.rightAnchor,constant : 10).isActive = true
        commentImage.widthAnchor.constraint(equalTo: mainView.widthAnchor,multiplier : 0.04).isActive = true
        commentImage.heightAnchor.constraint(equalTo:commentImage.widthAnchor ).isActive = true
        
        mainView.addSubview(commentNumber)
        commentNumber.topAnchor.constraint(equalTo: resturantImage.bottomAnchor,constant : 5).isActive = true
        commentNumber.leftAnchor.constraint(equalTo: commentImage.rightAnchor,constant : 3).isActive = true
        
        mainView.addSubview(verticalLine2)
        verticalLine2.topAnchor.constraint(equalTo: resturantImage.bottomAnchor ).isActive = true
        verticalLine2.leftAnchor.constraint(equalTo: commentNumber.rightAnchor,constant : 10).isActive = true
        verticalLine2.widthAnchor.constraint(equalToConstant : 1).isActive = true
        verticalLine2.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.2 ).isActive = true
       ///////

        
    }

    let mainView:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.rgb(63, green: 6, blue: 47)
        ci.layer.cornerRadius = 20
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.layer.shadowColor = UIColor.black.cgColor
        ci.layer.shadowOffset = CGSize(width: -1, height: 2)
        ci.layer.shadowOpacity = 0.1
        ci.layer.shadowRadius = 10
        ci.layer.masksToBounds = false
        ci.clipsToBounds = false
        return ci
        
    }()


    
    
    let rightArrowImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41423886_329976954213097_8795538958541914112_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    let leftArrowImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41514515_557440991352357_4463457072020717568_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    let resturantImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "03022507099b18557cb6d8baaaaee876"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    let resturanrName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 18)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString("pizz hut ", comment: "this is name")
        return NL
        
    }()
    
    
    let logoImageBack:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "Shape 130"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let logoImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41449893_472464039905616_1850804499946405888_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    let likeImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "3"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let likeNumber :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" 32 ", comment: "this is name")
        return NL
        
    }()
    
    
    let verticalLine :UIView = {
        let NL = UIView()
        NL.backgroundColor = UIColor.white
        NL.translatesAutoresizingMaskIntoConstraints = false
        return NL
        
    }()
    
    
    let commentImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "2"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let commentNumber :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" 32 ", comment: "this is name")
        return NL
        
    }()
    
    
    let verticalLine2 :UIView = {
        let NL = UIView()
        NL.backgroundColor = UIColor.white
        NL.translatesAutoresizingMaskIntoConstraints = false
        return NL
        
    }()
    
    let locationImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "1"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    let lcationName :UILabel = {
        let NL = UILabel()
        NL.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 14)
        NL.font = font
        NL.translatesAutoresizingMaskIntoConstraints = false
        NL.text = NSLocalizedString(" maddi_kornish  ", comment: "this is name")
        return NL
        
    }()

    let verticalLine3 :UIView = {
        let NL = UIView()
        NL.backgroundColor = UIColor.white
        NL.translatesAutoresizingMaskIntoConstraints = false
        return NL
        
    }()


    
    let floatRatingView: FloatRatingView  = {
        let departnames = FloatRatingView()
        departnames.translatesAutoresizingMaskIntoConstraints = false
        return departnames
    }()
    

}
