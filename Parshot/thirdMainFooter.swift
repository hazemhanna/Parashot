//
//  thirdMainFooter.swift
//  Parshot
//
//  Created by hazem on 9/5/18.
//  Copyright © 2018 hazem. All rights reserved.
//

//
//  MainFooter.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//
import UIKit
class thirdMainFooter: BaseCell {
    
    
    var data:FooterViewModel?{
        
        
        didSet{
            
            
            backgroundColor = data!.background!
            
            
              favouriteImage.loadImageUsingUrlString(data!.first_icon!)
              favouritelabel.text = data!.first_label
            
             orderImage.loadImageUsingUrlString(data!.second_icon!)
             orderlabel.text = data!.second_label!
        
             homeImage.loadImageUsingUrlString(data!.third_icon!)
       
            dealImage.loadImageUsingUrlString(data!.forth_icon!)
            deallabel.text = data!.first_label!
            notificationImage.loadImageUsingUrlString(data!.fifth_icon!)
            notificationlabel.text = data!.fifth_label!
            
            
        }
    }
    
    
    
    override func setupViews() {
       
        layer.cornerRadius = 25
       layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: -2, height: 3)
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 20
        layer.masksToBounds = false
         clipsToBounds = false
        
        ////////////// image
        addSubview(favouriteImage)
        favouriteImage.rightAnchor.constraint(equalTo: rightAnchor,constant : -30).isActive = true
        favouriteImage.topAnchor.constraint(equalTo: topAnchor,constant:5).isActive = true
        favouriteImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        favouriteImage.heightAnchor.constraint(equalTo: favouriteImage.widthAnchor).isActive = true
        favouriteImage.isUserInteractionEnabled = true
        ////////
        
        /////// value label
        addSubview(favouriteValuelabel)
        favouriteValuelabel.rightAnchor.constraint(equalTo: favouriteImage.rightAnchor,constant : -4).isActive = true
        favouriteValuelabel.topAnchor.constraint(equalTo: favouriteImage.topAnchor,constant : 1).isActive = true
        
        ///////
        addSubview(lineView)
        lineView.rightAnchor.constraint(equalTo: favouriteImage.leftAnchor,constant : -20).isActive = true
        lineView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        lineView.widthAnchor.constraint(equalToConstant: 1).isActive = true
        lineView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.6).isActive = true
        ///////// label
        addSubview(favouritelabel)
        favouritelabel.centerXAnchor.constraint(equalTo: favouriteImage.centerXAnchor).isActive = true
        favouritelabel.topAnchor.constraint(equalTo: favouriteImage.bottomAnchor).isActive = true
        
        
        ////////  image
        addSubview(orderImage)
        orderImage.rightAnchor.constraint(equalTo: favouriteImage.leftAnchor,constant:-40).isActive = true
        orderImage.topAnchor.constraint(equalTo: topAnchor,constant:5).isActive = true
        orderImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        orderImage.heightAnchor.constraint(equalTo: orderImage.widthAnchor).isActive = true
       
        addSubview(orderValuelabel)
        orderValuelabel.rightAnchor.constraint(equalTo: orderImage.rightAnchor,constant : -4).isActive = true
        orderValuelabel.topAnchor.constraint(equalTo: orderImage.topAnchor,constant : 1).isActive = true
        
        ////////////  label
        addSubview(orderlabel)
        orderlabel.centerXAnchor.constraint(equalTo: orderImage.centerXAnchor ).isActive = true
        orderlabel.topAnchor.constraint(equalTo: orderImage.bottomAnchor).isActive=true
        
        
        
        ///////// more image
        addSubview(notificationImage)
        notificationImage.leftAnchor.constraint(equalTo: leftAnchor,constant:30).isActive = true
        notificationImage.topAnchor.constraint(equalTo: topAnchor,constant:5).isActive = true
        notificationImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        notificationImage.heightAnchor.constraint(equalTo: notificationImage.widthAnchor).isActive = true
        ////////////
        addSubview(notificationValuelabel)
        notificationValuelabel.rightAnchor.constraint(equalTo: notificationImage.rightAnchor,constant : -4).isActive = true
        notificationValuelabel.topAnchor.constraint(equalTo: notificationImage.topAnchor,constant : 1).isActive = true
        //////////
        addSubview(secondlineView)
        secondlineView.leftAnchor.constraint(equalTo: notificationImage.rightAnchor,constant : 20).isActive = true
        secondlineView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        secondlineView.widthAnchor.constraint(equalToConstant: 1).isActive = true
        secondlineView.heightAnchor.constraint(equalTo: heightAnchor,multiplier : 0.5).isActive = true
        
        ///////// more label
        addSubview(notificationlabel)
        notificationlabel.centerXAnchor.constraint(equalTo: notificationImage.centerXAnchor ).isActive = true
        notificationlabel.topAnchor.constraint(equalTo: notificationImage.bottomAnchor).isActive=true
        
        /////////////  image
        addSubview(dealImage)
        dealImage.leftAnchor.constraint(equalTo: notificationImage.rightAnchor,constant:40).isActive = true
        dealImage.topAnchor.constraint(equalTo: topAnchor,constant:5).isActive = true
        dealImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        dealImage.heightAnchor.constraint(equalTo: dealImage.widthAnchor).isActive = true
        
        
        addSubview(dealsValuelabel)
        dealsValuelabel.rightAnchor.constraint(equalTo: dealImage.rightAnchor,constant : -4).isActive = true
        dealsValuelabel.topAnchor.constraint(equalTo: dealImage.topAnchor,constant : 1).isActive = true
        
        //////// label
        addSubview(deallabel)
        deallabel.centerXAnchor.constraint(equalTo: dealImage.centerXAnchor ).isActive = true
        deallabel.topAnchor.constraint(equalTo: dealImage.bottomAnchor).isActive=true
        
      
      ////////  home view
        addSubview(homeView)
        homeView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        homeView.bottomAnchor.constraint(equalTo: bottomAnchor,constant : -7).isActive = true
        homeView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        homeView.heightAnchor.constraint(equalTo: homeView.widthAnchor).isActive = true
        
        ///////////  home  image
       homeView.addSubview(homeImage)
        homeImage.centerXAnchor.constraint(equalTo: homeView.centerXAnchor).isActive = true
        homeImage.centerYAnchor.constraint(equalTo: homeView.centerYAnchor).isActive = true
        homeImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        homeImage.heightAnchor.constraint(equalTo: homeImage.widthAnchor).isActive = true
        
        
        
        notificationImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addToMenuePage)))
        notificationImage.isUserInteractionEnabled = true
        
        favouriteImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goTomainPage)))
        favouriteImage.isUserInteractionEnabled = true
        
        
        dealImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToGalleyImage)))
        dealImage.isUserInteractionEnabled = true
        
        
        
        
        homeImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(SwithcToVideopage)))
        homeImage.isUserInteractionEnabled = true
        
        orderImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(SwithcToReservationopage)))
        orderImage.isUserInteractionEnabled = true
        
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
    
    let favouriteImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "40978531_266719597302048_6885258902531735552_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    ///////  name label
    
    let favouritelabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.rgb(48, green: 39, blue: 133)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("favourite", comment: "this is name")
        return pl
        
    }()
    
    
    
    
    let favouriteValuelabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("5", comment: "this is name")
        return pl
        
    }()
    
    
    
    
    
    ///////  image
    
    let orderImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "40779120_226322154902703_6857912631009738752_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    ///////  label
    let orderlabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.rgb(48, green: 39, blue: 133)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("myOrder", comment: "this is name")
        return pl
        
    }()
    
    
    
    let orderValuelabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("3", comment: "this is name")
        return pl
        
    }()
    ///////
    
    let homeImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "40967373_680413545659255_4311881418377527296_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    
    
    
    let homeView:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.white
        ci.layer.cornerRadius = 28
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    ////////
    let lineView:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    ////////
    let secondlineView:UIView = {
        let ci = UIView()
        ci.backgroundColor = UIColor.rgb(230, green: 234, blue: 237)
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    /////// offers image
    let dealImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "40838677_1947034708668674_8538431835267399680_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    /////// offers label
    let deallabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.rgb(48, green: 39, blue: 133)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("deals", comment: "this is name")
        return pl
        
    }()
    
    
    
    
    
    let dealsValuelabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("5", comment: "this is name")
        return pl
        
    }()
    /////// more imae
    
    let notificationImage:CustomImageView = {
        let ci = CustomImageView(image:#imageLiteral(resourceName: "41019823_1097764583721975_4885416391714275328_n"))
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
        
    }()
    
    
    /////// nearest image
    let notificationlabel :UILabel = {
        let pl = UILabel()
        pl.textColor =  UIColor.rgb(48, green: 39, blue: 133)
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("notfications", comment: "this is name")
        return pl
        
    }()
    
    
    
    
    let notificationValuelabel :UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor.white
        var font = UIFont(name: "JFFlat-Regular", size: 10)
        pl.font = font
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = NSLocalizedString("2", comment: "this is name")
        return pl
        
    }()
}

