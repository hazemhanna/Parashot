//
//  MainFooter.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//
import UIKit
class MainFooter: BaseCell {
    
    override func setupViews() {
        backgroundColor = .white
       // layer.cornerRadius = 25
        
        ////////////// image
        addSubview(mainImage)
        mainImage.rightAnchor.constraint(equalTo: rightAnchor,constant : -20).isActive = true
        mainImage.topAnchor.constraint(equalTo: topAnchor,constant:5).isActive = true
        mainImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        mainImage.heightAnchor.constraint(equalTo: mainImage.widthAnchor).isActive = true
        mainImage.isUserInteractionEnabled = true
        
        ///////// label
        addSubview(mainlabel)
        mainlabel.centerXAnchor.constraint(equalTo: mainImage.centerXAnchor).isActive = true
        mainlabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor).isActive = true
        
        
        ////////  image
        addSubview(OrderImage)
        OrderImage.rightAnchor.constraint(equalTo: mainImage.leftAnchor,constant:-50).isActive = true
        OrderImage.topAnchor.constraint(equalTo: topAnchor,constant:5).isActive = true
        OrderImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        OrderImage.heightAnchor.constraint(equalTo: OrderImage.widthAnchor).isActive = true
        
        
        ////////////  label
        addSubview(orderlabel)
        orderlabel.centerXAnchor.constraint(equalTo: OrderImage.centerXAnchor ).isActive = true
        orderlabel.topAnchor.constraint(equalTo: OrderImage.bottomAnchor).isActive=true
        
        
        
        ///////// more image
        addSubview(moreImage)
        moreImage.leftAnchor.constraint(equalTo: leftAnchor,constant:20).isActive = true
        moreImage.topAnchor.constraint(equalTo: topAnchor,constant:5).isActive = true
        moreImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        moreImage.heightAnchor.constraint(equalTo: moreImage.widthAnchor).isActive = true
        
        ///////// more label
        addSubview(morelabel)
        morelabel.centerXAnchor.constraint(equalTo: moreImage.centerXAnchor ).isActive = true
        morelabel.topAnchor.constraint(equalTo: moreImage.bottomAnchor).isActive=true
        
        /////////////  image
        addSubview(notificationImage)
        notificationImage.leftAnchor.constraint(equalTo: moreImage.rightAnchor,constant:50).isActive = true
        notificationImage.topAnchor.constraint(equalTo: topAnchor,constant:5).isActive = true
        notificationImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        notificationImage.heightAnchor.constraint(equalTo: notificationImage.widthAnchor).isActive = true
        
        //////// label
        addSubview(notificationlabel)
        notificationlabel.centerXAnchor.constraint(equalTo: notificationImage.centerXAnchor ).isActive = true
        notificationlabel.topAnchor.constraint(equalTo: notificationImage.bottomAnchor).isActive=true
        
        
        ///////////   image
        addSubview(offerImage)
        offerImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        offerImage.topAnchor.constraint(equalTo: topAnchor,constant : 5).isActive = true
        offerImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        offerImage.heightAnchor.constraint(equalTo: offerImage.widthAnchor).isActive = true
        
        ////////   label
        addSubview(ofeerlabel)
        ofeerlabel.centerXAnchor.constraint(equalTo: offerImage.centerXAnchor ).isActive = true
        ofeerlabel.topAnchor.constraint(equalTo: offerImage.bottomAnchor).isActive=true
        
        moreImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addToMenuePage)))
        moreImage.isUserInteractionEnabled = true
        
        mainImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goTomainPage)))
        mainImage.isUserInteractionEnabled = true
        
        
        notificationImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToGalleyImage)))
        notificationImage.isUserInteractionEnabled = true
        
        
        
        
        offerImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(SwithcToVideopage)))
        offerImage.isUserInteractionEnabled = true
        
        OrderImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(SwithcToReservationopage)))
        OrderImage.isUserInteractionEnabled = true
        
    }
    
    
    
    //// make
    func addToMenuePage(tapGestureRecognizer: UITapGestureRecognizer)
        
    {
       
    }
    
    ////
    func goTomainPage(tapGestureRecognizer: UITapGestureRecognizer)
        
    {
      
    }
    
    func goToGalleyImage(tapGestureRecognizer: UITapGestureRecognizer)
        
    {
      
    }
    
    func SwithcToVideopage(tapGestureRecognizer: UITapGestureRecognizer)
        
    {
        
        
    }
    
    
    func SwithcToReservationopage(tapGestureRecognizer: UITapGestureRecognizer)
        
    {
        
  
        
    }
    

    
    ///////  image
    
    let mainImage:UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "shelter"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    ///////  name label
    
    let mainlabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.rgb(48, green: 39, blue: 133)
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("mainpage", comment: "this is name")
        return pl
        
    }()
    
    ///////  image
    
    let OrderImage:UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "shopping-cart (1)"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    ///////  label
    let orderlabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.rgb(48, green: 39, blue: 133)
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("myorder", comment: "this is name")
        return pl
        
    }()
    
    ///////
    
    let offerImage:UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "discount (2)"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    /////// favourite label
    let ofeerlabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.rgb(48, green: 39, blue: 133)
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("offer", comment: "this is name")
        return pl
        
    }()
    /////// offers image
    
    let notificationImage:UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "notification (3)"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    /////// offers label
    let notificationlabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.rgb(48, green: 39, blue: 133)
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("notifications", comment: "this is name")
        return pl
        
    }()
    
    /////// more imae
    
    let moreImage:UIImageView = {
        let ci = UIImageView(image:#imageLiteral(resourceName: "mode-circular-button"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    /////// nearest image
    let morelabel :UILabel = {
        let pl = UILabel()
        pl.textColor =  UIColor.rgb(48, green: 39, blue: 133)
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("more", comment: "this is name")
        return pl
        
    }()
    
}
