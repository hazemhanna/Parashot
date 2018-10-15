//
//  MainFooter.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//
import UIKit
class MainFooter: BaseCell {
   
    var controller : FirstMainPageController?
    
    
    var data:FooterViewModel?{
        
        
        didSet{
            
            
            // backgroundColor = data!.background!
            
            
            mainImage.loadImageUsingUrlString(data!.first_icon!)
            mainlabel.text = data!.first_label
            
            OrderImage.loadImageUsingUrlString(data!.second_icon!)
            orderlabel.text = data!.second_label!
            
            offerImage.loadImageUsingUrlString(data!.third_icon!)
            ofeerlabel.text = data!.third_label!
            notificationImage.loadImageUsingUrlString(data!.forth_icon!)
            notificationlabel.text = data!.first_label!
            moreImage.loadImageUsingUrlString(data!.fifth_icon!)
            morelabel.text = data!.fifth_label!
            
            
        }
    }
    
    override func setupViews() {
        backgroundColor = .white
       // layer.cornerRadius = 25
        
        
        
        ////////////// image
        addSubview(fView)
        fView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        fView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        fView.widthAnchor.constraint(equalTo: widthAnchor,multiplier :1/5).isActive = true
        fView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        
        addSubview(SecondView)
        SecondView.rightAnchor.constraint(equalTo: fView.leftAnchor).isActive = true
        SecondView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        SecondView.widthAnchor.constraint(equalTo: widthAnchor,multiplier :1/5).isActive = true
        SecondView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        addSubview(thirdView)
        thirdView.rightAnchor.constraint(equalTo: SecondView.leftAnchor).isActive = true
        thirdView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        thirdView.widthAnchor.constraint(equalTo: widthAnchor,multiplier :1/5).isActive = true
        thirdView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        
        addSubview(FourthView)
        FourthView.rightAnchor.constraint(equalTo: thirdView.leftAnchor).isActive = true
        FourthView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        FourthView.widthAnchor.constraint(equalTo: widthAnchor,multiplier :1/5).isActive = true
        FourthView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        addSubview(fifthView)
        fifthView.rightAnchor.constraint(equalTo: FourthView.leftAnchor).isActive = true
        fifthView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        fifthView.widthAnchor.constraint(equalTo: widthAnchor,multiplier :1/5).isActive = true
        fifthView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
     
        
        addSubview(mainImage)
        mainImage.centerXAnchor.constraint(equalTo: fView.centerXAnchor).isActive = true
        mainImage.topAnchor.constraint(equalTo: fView.topAnchor,constant:5).isActive = true
        mainImage.widthAnchor.constraint(equalTo: fView.widthAnchor,multiplier : 0.4).isActive = true
        mainImage.heightAnchor.constraint(equalTo: mainImage.widthAnchor).isActive = true
        mainImage.isUserInteractionEnabled = true
        
        ///////// label
        addSubview(mainlabel)
        mainlabel.centerXAnchor.constraint(equalTo: mainImage.centerXAnchor).isActive = true
        mainlabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor).isActive = true
        
        ///////////   image
        addSubview(offerImage)
        offerImage.centerXAnchor.constraint(equalTo: thirdView.centerXAnchor).isActive = true
        offerImage.topAnchor.constraint(equalTo: thirdView.topAnchor,constant : 5).isActive = true
        offerImage.widthAnchor.constraint(equalTo: thirdView.widthAnchor,multiplier : 0.4).isActive = true
        offerImage.heightAnchor.constraint(equalTo: offerImage.widthAnchor).isActive = true
        
        ////////   label
        addSubview(ofeerlabel)
        ofeerlabel.centerXAnchor.constraint(equalTo: offerImage.centerXAnchor ).isActive = true
        ofeerlabel.topAnchor.constraint(equalTo: offerImage.bottomAnchor).isActive=true
        

        
        ////////  image
        addSubview(OrderImage)
        OrderImage.centerXAnchor.constraint(equalTo: SecondView.centerXAnchor).isActive = true
        OrderImage.topAnchor.constraint(equalTo: SecondView.topAnchor,constant:5).isActive = true
        OrderImage.widthAnchor.constraint(equalTo: SecondView.widthAnchor,multiplier:0.4).isActive = true
        OrderImage.heightAnchor.constraint(equalTo: OrderImage.widthAnchor).isActive = true
        
        
        ////////////  label
        addSubview(orderlabel)
        orderlabel.centerXAnchor.constraint(equalTo: OrderImage.centerXAnchor ).isActive = true
        orderlabel.topAnchor.constraint(equalTo: OrderImage.bottomAnchor).isActive=true
        
        
        
        
        

        
        /////////////  image
        addSubview(notificationImage)
        notificationImage.centerXAnchor.constraint(equalTo: FourthView.centerXAnchor).isActive = true
        notificationImage.topAnchor.constraint(equalTo: FourthView.topAnchor,constant:5).isActive = true
        notificationImage.widthAnchor.constraint(equalTo: FourthView.widthAnchor,multiplier:0.4).isActive = true
        notificationImage.heightAnchor.constraint(equalTo: notificationImage.widthAnchor).isActive = true
        
        //////// label
        addSubview(notificationlabel)
        notificationlabel.centerXAnchor.constraint(equalTo: notificationImage.centerXAnchor ).isActive = true
        notificationlabel.topAnchor.constraint(equalTo: notificationImage.bottomAnchor).isActive=true

        
        
        
        ///////// more image
        addSubview(moreImage)
        moreImage.centerXAnchor.constraint(equalTo: fifthView.centerXAnchor ).isActive = true
        moreImage.topAnchor.constraint(equalTo: fifthView.topAnchor,constant:5).isActive = true
        moreImage.widthAnchor.constraint(equalTo: fifthView.widthAnchor,multiplier : 0.4).isActive = true
        moreImage.heightAnchor.constraint(equalTo: moreImage.widthAnchor).isActive = true
        
        
        ///////// more label
        addSubview(morelabel)
        morelabel.centerXAnchor.constraint(equalTo: moreImage.centerXAnchor ).isActive = true
        morelabel.topAnchor.constraint(equalTo: moreImage.bottomAnchor).isActive=true
        

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
       
        
      //  controller?.goToMenuPage ()
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
    let fView:UIView = {
        let ci = UIView()
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.backgroundColor = UIColor.clear
        return ci
        
    }()
    
    let SecondView:UIView = {
        let ci = UIView()
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.backgroundColor = UIColor.clear

        return ci
        
    }()
    let thirdView:UIView = {
        let ci = UIView()
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.backgroundColor = UIColor.clear

        return ci
        
    }()
    let FourthView:UIView = {
        let ci = UIView()
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.backgroundColor = UIColor.clear

        return ci
        
    }()
    let fifthView:UIView = {
        let ci = UIView()
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.backgroundColor = UIColor.clear

        return ci
        
    }()
    
    
    
    let mainImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "shelter"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    ///////  name label
    
    let mainlabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("mainpage", comment: "this is name")
        return pl
        
    }()
    
    ///////  image
    
    let OrderImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "shopping-cart (1)"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    ///////  label
    let orderlabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("myorder", comment: "this is name")
        return pl
        
    }()
    
    ///////
    
    let offerImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "discount (2)"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    /////// favourite label
    let ofeerlabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("offer", comment: "this is name")
        return pl
        
    }()
    /////// offers image
    
    let notificationImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "notification (3)"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    /////// offers label
    let notificationlabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("notifications", comment: "this is name")
        return pl
        
    }()
    
    /////// more imae
    
    let moreImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "mode-circular-button"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    /////// nearest image
    let morelabel :UILabel = {
        let pl = UILabel()
        pl.textColor =  UIColor.black
        var font = UIFont(name: "JFFlat-Regular", size: 12)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("more", comment: "this is name")
        return pl
        
    }()
    
}
